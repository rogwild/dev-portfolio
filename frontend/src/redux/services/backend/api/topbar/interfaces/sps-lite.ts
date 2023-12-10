import { IBackendComponentPageBlock } from "~redux/services/backend/components/page-blocks/interfaces";

export interface ISpsLiteBackendApiTopbar {
  id: number;
  locale: string;
  title: string;
  uid: string | null;
  className: string | null;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  variant: "boxed";
  pageBlocks?: IBackendComponentPageBlock[] | null;
}
