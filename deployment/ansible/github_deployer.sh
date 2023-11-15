#!/bin/bash

. ./get_env.sh

ANSIBLE_HOST=$(get_env ANSIBLE_HOST)
ANSIBLE_PASSWORD=$(get_env ANSIBLE_PASSWORD)

ROOT_AWS_ACCESS_KEY=$(get_env ROOT_AWS_ACCESS_KEY)
ROOT_AWS_SECRET_ACCESS_KEY=$(get_env ROOT_AWS_SECRET_ACCESS_KEY)

ROOT_CLOUDFLARE_ACCOUNT_API_KEY=$(get_env ROOT_CLOUDFLARE_ACCOUNT_API_KEY)
ROOT_CLOUDFLARE_ACCOUNT_EMAIL=$(get_env ROOT_CLOUDFLARE_ACCOUNT_EMAIL)

ROOT_SENTRY_API_KEY=$(get_env ROOT_SENTRY_API_KEY)
ROOT_SENTRY_ORGANIZATION_SLUG=$(get_env ROOT_SENTRY_ORGANIZATION_SLUG)
ROOT_SENTRY_TEAM_SLUG=$(get_env ROOT_SENTRY_TEAM_SLUG)

DOMAIN=$(get_env DOMAIN)

JWT_SECRET=$(get_env JWT_SECRET)
ADMIN_JWT_SECRET=$(get_env ADMIN_JWT_SECRET)
APP_KEYS=$(get_env APP_KEYS)
API_TOKEN_SALT=$(get_env API_TOKEN_SALT)

AWS_S3_BUCKET=$(get_env AWS_S3_BUCKET)
AWS_S3_REGION=$(get_env AWS_S3_REGION)

DATABASE_NAME=$(get_env DATABASE_NAME)
DATABASE_USERNAME=$(get_env DATABASE_USERNAME)
DATABASE_PASSWORD=$(get_env DATABASE_PASSWORD)

PORTAINER_USERNAME=$(get_env PORTAINER_USERNAME)
PORTAINER_PASSWORD=$(get_env PORTAINER_PASSWORD)
PORTAINER_SERVICE_SUBDOMAIN=$(get_env PORTAINER_SERVICE_SUBDOMAIN)

TRAEFIK_USERNAME=$(get_env TRAEFIK_USERNAME)
TRAEFIK_PASSWORD=$(get_env TRAEFIK_PASSWORD)
TRAEFIK_SERVICE_SUBDOMAIN=$(get_env TRAEFIK_SERVICE_SUBDOMAIN)

BACKEND_SERVICE_NAME=$(get_env BACKEND_SERVICE_NAME)
BACKEND_SERVICE_SUBDOMAIN=$(get_env BACKEND_SERVICE_SUBDOMAIN)
BACKEND_DOCKER_HUB_REPOSITORY_NAME=$(get_env BACKEND_DOCKER_HUB_REPOSITORY_NAME)

FRONTEND_SERVICE_NAME=$(get_env FRONTEND_SERVICE_NAME)
FRONTEND_SERVICE_SUBDOMAIN=$(get_env FRONTEND_SERVICE_SUBDOMAIN)
FRONTEND_DOCKER_HUB_REPOSITORY_NAME=$(get_env FRONTEND_DOCKER_HUB_REPOSITORY_NAME)

DOCUMENTATION_SERVICE_NAME=$(get_env DOCUMENTATION_SERVICE_NAME)
DOCUMENTATION_SERVICE_SUBDOMAIN=$(get_env DOCUMENTATION_SERVICE_SUBDOMAIN)
DOCUMENTATION_DOCKER_HUB_REPOSITORY_NAME=$(get_env DOCUMENTATION_DOCKER_HUB_REPOSITORY_NAME)

GITHUB_TOKEN=$(get_env GITHUB_TOKEN)
GITHUB_REPOSITORY=$(get_env GITHUB_REPOSITORY)

TELEGRAM_BOT_TOKEN=$(get_env TELEGRAM_BOT_TOKEN)
RUN_TELEGRAM_BOT=$(get_env RUN_TELEGRAM_BOT)

OPENAI_API_KEY=$(get_env OPENAI_API_KEY)

STRIPE_API_KEY=$(get_env STRIPE_API_KEY)

SECRETS=(\
    "ANSIBLE_HOST $ANSIBLE_HOST" \
    "ANSIBLE_PASSWORD $ANSIBLE_PASSWORD" \
    "ROOT_AWS_ACCESS_KEY $ROOT_AWS_ACCESS_KEY" \
    "ROOT_AWS_SECRET_ACCESS_KEY $ROOT_AWS_SECRET_ACCESS_KEY" \
    "ROOT_CLOUDFLARE_ACCOUNT_API_KEY $ROOT_CLOUDFLARE_ACCOUNT_API_KEY" \
    "ROOT_CLOUDFLARE_ACCOUNT_EMAIL $ROOT_CLOUDFLARE_ACCOUNT_EMAIL" \
    "ROOT_SENTRY_API_KEY $ROOT_SENTRY_API_KEY" \
    "ROOT_SENTRY_ORGANIZATION_SLUG $ROOT_SENTRY_ORGANIZATION_SLUG" \
    "ROOT_SENTRY_TEAM_SLUG $ROOT_SENTRY_TEAM_SLUG" \
    "DOMAIN $DOMAIN" \
    "JWT_SECRET $JWT_SECRET" \
    "ADMIN_JWT_SECRET $ADMIN_JWT_SECRET" \
    "APP_KEYS $APP_KEYS" \
    "API_TOKEN_SALT $API_TOKEN_SALT" \
    "AWS_S3_BUCKET $AWS_S3_BUCKET" \
    "AWS_S3_REGION $AWS_S3_REGION" \
    "DATABASE_NAME $DATABASE_NAME" \
    "DATABASE_USERNAME $DATABASE_USERNAME" \
    "DATABASE_PASSWORD $DATABASE_PASSWORD" \
    "PORTAINER_USERNAME $PORTAINER_USERNAME" \
    "PORTAINER_PASSWORD $PORTAINER_PASSWORD" \
    "PORTAINER_SERVICE_SUBDOMAIN $PORTAINER_SERVICE_SUBDOMAIN" \
    "TRAEFIK_USERNAME $TRAEFIK_USERNAME" \
    "TRAEFIK_PASSWORD $TRAEFIK_PASSWORD" \
    "TRAEFIK_SERVICE_SUBDOMAIN $TRAEFIK_SERVICE_SUBDOMAIN" \
    "BACKEND_SERVICE_NAME $BACKEND_SERVICE_NAME" \
    "BACKEND_SERVICE_SUBDOMAIN $BACKEND_SERVICE_SUBDOMAIN" \
    "BACKEND_DOCKER_HUB_REPOSITORY_NAME $BACKEND_DOCKER_HUB_REPOSITORY_NAME" \
    "FRONTEND_SERVICE_NAME $FRONTEND_SERVICE_NAME" \
    "FRONTEND_SERVICE_SUBDOMAIN $FRONTEND_SERVICE_SUBDOMAIN" \
    "FRONTEND_DOCKER_HUB_REPOSITORY_NAME $FRONTEND_DOCKER_HUB_REPOSITORY_NAME" \
    "DOCUMENTATION_SERVICE_NAME $DOCUMENTATION_SERVICE_NAME" \
    "DOCUMENTATION_SERVICE_SUBDOMAIN $DOCUMENTATION_SERVICE_SUBDOMAIN" \
    "DOCUMENTATION_DOCKER_HUB_REPOSITORY_NAME $DOCUMENTATION_DOCKER_HUB_REPOSITORY_NAME" \
    "GH_TOKEN $GITHUB_TOKEN" \
    "TELEGRAM_BOT_TOKEN $TELEGRAM_BOT_TOKEN" \
    "RUN_TELEGRAM_BOT $RUN_TELEGRAM_BOT" \
    "OPENAI_API_KEY $OPENAI_API_KEY" \
    "STRIPE_API_KEY $STRIPE_API_KEY" \
)

BRANCHES=( \
    "ansible-up" \
    "ansible-down" \
    "ansible-backend-up" \
    "ansible-backend-down" \
    "ansible-frontend-up" \
    "ansible-frontend-down" \
)

if [ "$1" != "down" ]
then
    cd ./github/github-node-api && npm install && cd ../..

    for i in "${BRANCHES[@]}"
    do
        BRANCH_NAME=$i
        node ./github/github-node-api/create_branch.js \
            $GITHUB_TOKEN \
            $GITHUB_REPOSITORY \
            $BRANCH_NAME
    done
        
    for i in "${SECRETS[@]}"
    do
        SECRET_NAME="${i%% *}"
        SECRET_CONTENT="${i#* }"

        if [ ! -z $SECRET_CONTENT ]
        then
            node ./github/github-node-api/create_secret.js \
                $GITHUB_TOKEN \
                $GITHUB_REPOSITORY \
                $SECRET_NAME \
                $SECRET_CONTENT
        fi
    done
else
    cd ./github/github-node-api && npm install && cd ../..

    for i in "${SECRETS[@]}"
    do
        SECRET_NAME="${i%% *}"
        SECRET_CONTENT="${i#* }"

        node ./github/github-node-api/delete_secret.js \
            $GITHUB_TOKEN \
            $GITHUB_REPOSITORY \
            $SECRET_NAME
    done
fi