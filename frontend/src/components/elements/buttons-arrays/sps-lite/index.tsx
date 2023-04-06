import Dropdown from "./Dropdown";
import Simple from "./Simple";
import { FC } from "react";
import { ISpsLiteBackendButtonsArray } from "types/components/elements/sps-lite";

export interface IButtonsArray
  extends Omit<
    ISpsLiteBackendButtonsArray,
    `id` | `description` | `className` | `__component`
  > {
  description?: string | null;
  className?: string | null;
  __component?: ISpsLiteBackendButtonsArray[`__component`];
}

export const variants = {
  simple: Simple,
  dropdown: Dropdown,
};

export default function ButtonsArrays(props: IButtonsArray) {
  const Comp = variants[
    props.variant as keyof typeof variants
  ] as FC<IButtonsArray>;

  if (!Comp) {
    return <></>;
  }

  return <Comp {...props} />;
}
