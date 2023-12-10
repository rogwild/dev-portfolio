import { faker } from "@faker-js/faker";
import { ISpsLiteBackendNavbarBlock } from "../interfaces/sps-lite";
import { entity as logotype } from "~redux/services/backend/components/elements/logotype/mock/sps-lite";
import { entity as button } from "~redux/services/backend/components/elements/button/mock/sps-lite";

export const entity: ISpsLiteBackendNavbarBlock = {
  id: 2,
  __component: "page-blocks.navbar-block",
  variant: "simple-links-on-left",
  description: faker.lorem.paragraph(),
  className: faker.lorem.slug(),
  logotype: { ...logotype },
  buttons: [{ ...button }, { ...button }],
  additionalButtons: [{ ...button }],
  extraButtons: [{ ...button }],
};
