const strapiUtils = require('@rogwild/strapi-utils');
const { Readable } = require('stream');
const { google } = require('googleapis');

async function saveAsPdf({ event, sideEffect, payload }) {
    const { result } = event;

    const pdfBuffer = await strapiUtils.api.createDocumentFromTemplate({
        uid: payload.uid,
        params: payload,
        format: 'pdf',
        saveFile: true,
    });

    const pdfFileName = `${payload.uid}_${result?.id || Date.now()}.pdf`;

    const pdfFileMeta = {
        name: pdfFileName,
        type: 'application/pdf',
        size: Buffer.byteLength(pdfBuffer),
        buffer: pdfBuffer,
    };

    if (sideEffect.provider === 'local') {
        const createdFile = await strapi
            .plugin('upload')
            .service('upload')
            .upload({
                files: pdfFileMeta,
                data: {},
            })
            .then((res) => res[0]);
    } else if (sideEffect.provider === 'google-drive') {
        await uploadFileToGoogleDrive(pdfFileMeta);
    }
}

module.exports = saveAsPdf;

async function getGoogleDriveService() {
    const configs = await strapi.entityService.findMany('api::configuration.configuration', {
        populate: {
            configs: {
                populate: '*',
            },
        },
    });

    const googleDriveConfig = configs.configs.find((c) => c.provider === 'google-drive');

    if (!googleDriveConfig) {
        console.log('No Google Config items in Strapi Configuration');
        return;
    }

    const SCOPES = ['https://www.googleapis.com/auth/drive'];

    const auth = new google.auth.GoogleAuth({
        credentials: googleDriveConfig.config,
        scopes: SCOPES,
    });
    const driveService = google.drive({ version: 'v3', auth });
    return driveService;
}

async function uploadFileToGoogleDrive(pdfFileMeta) {
    const configs = await strapi.entityService.findMany('api::configuration.configuration', {
        populate: {
            configs: {
                populate: '*',
            },
        },
    });

    const googleDriveConfig = configs.configs.find((c) => c.provider === 'google-drive');

    if (!googleDriveConfig) {
        console.log('No Google Config items in Strapi Configuration');
        return;
    }

    const folderId = googleDriveConfig.config?.folder;

    if (!folderId) {
        console.log('No folder in Google Config. Add "folder" key to the object.');
        return;
    }

    const service = await getGoogleDriveService();

    const { data } = await service.files.create({
        resource: {
            name: pdfFileMeta.name,
            parents: [folderId],
        },
        media: {
            mimeType: 'application/pdf',
            body: Readable.from(pdfFileMeta.buffer),
        },
        fields: 'id,name',
    });
}
