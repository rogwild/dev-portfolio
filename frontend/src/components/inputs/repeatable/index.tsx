import { useEffect, useMemo } from "react";
import { ErrorOption, useFieldArray, useFormContext } from "react-hook-form";
import Inputs, { IInputProps } from "..";
import { getInputErrors } from "~utils/forms";
import { PlusIcon, TrashIcon } from "@heroicons/react/24/outline";

export interface IInsideComponentProps {
  translate?: (message: string) => string;
  parentKey?: string;
  baseKey: string;
  control: any;
  field: any;
  fieldIndex: number;
  snakeToCamel: (str: string) => string;
  globalErrors: any;
  initialValue: any;
}

function camelToSnake(name: string) {
  return name.replace(/([A-Z])/g, function ($1) {
    return `_` + $1.toLowerCase();
  });
}

function snakeToCamel(str: string) {
  return str
    .toLowerCase()
    .replace(/([-_][a-z])/g, (group) =>
      group.toUpperCase().replace(`-`, ``).replace(`_`, ``)
    );
}

function camelCaseKeysToSnake(obj: any) {
  // console.log(`🚀 ~ camelCaseKeysToSnake ~ obj`, obj);
  if (typeof obj != `object`) return obj;

  if (Array.isArray(obj)) {
    const newObj = [] as any;

    for (const objItem of obj) {
      const snaked = camelCaseKeysToSnake(objItem);
      newObj.push(snaked);
    }

    return newObj;
  } else {
    // console.log(`🚀 ~ camelCaseKeysToSnake ~ obj`, obj);
    const newObj = { ...obj };
    for (var oldName in newObj) {
      // console.log(`🚀 ~ camelCaseKeysToSnake ~ oldName`, oldName);
      // Camel to underscore
      const newName = camelToSnake(oldName);

      // Only process if names are different
      if (newName != oldName) {
        // Check for the old property name to avoid a ReferenceError in strict mode.
        if (newObj.hasOwnProperty(oldName)) {
          newObj[newName] = newObj[oldName];
          delete newObj[oldName];
        }
      }

      // Recursion
      if (typeof newObj[newName] == `object`) {
        newObj[newName] = camelCaseKeysToSnake(newObj[newName]);
      }
    }
    // console.log(`🚀 ~ camelCaseKeysToSnake ~ newObj`, newObj);

    return newObj;
  }
}

function oldRemoveUnnecessaryKeys(obj: any, inputs: any) {
  console.log(`🚀 ~ removeUnnecessaryKeys ~ inputs`, inputs, obj);

  return JSON.parse(
    JSON.stringify(obj, (k, v) => {
      console.log(`🚀 ~ JSON.stringify ~ k, v`, k, v);

      return k === `id` ? undefined : v;
    })
  );
}

/**
 * Removes id in objects, if they are in components, or not passed to
 * input with by="id"
 */
function removeUnnecessaryKeys(obj: any, keys = [`id`], inputs: any): any {
  let newObj: any;
  if (Array.isArray(obj)) {
    newObj = [...obj];
  } else {
    newObj = { ...obj };
  }

  if (Array.isArray(newObj)) {
    return newObj.map(function (item) {
      return removeUnnecessaryKeys(item, keys, inputs);
    });
  } else if (typeof newObj === `object` && newObj != null) {
    Object.getOwnPropertyNames(newObj).forEach(function (key) {
      const currentInput = inputs.find((input: any) => {
        if (input?.name === key) {
          return true;
        }
      });
      let removeKeys = [...keys];

      if (currentInput && currentInput.by) {
        removeKeys = removeKeys.filter((key) => key !== currentInput.by);
      }

      if (removeKeys.includes(key)) {
        delete newObj[key];
      } else if (typeof newObj[key] === `object`) {
        const passInput = currentInput?.inputs
          ? currentInput?.inputs
          : [currentInput];

        newObj[key] = removeUnnecessaryKeys(newObj[key], removeKeys, passInput);
      }
    });

    return newObj;
  }
}

export default function RepeatableInput(props: IInputProps) {
  // console.log(`🚀 ~ RepeatableInput ~ props`, props);
  let {
    label,
    name,
    rules,
    shouldUnregister,
    initialValue,
    placeholder,
    className,
    inputConfig,
    inputs,
    parentKey,
    baseKey = props.name,
    removeButtonTitle,
    addButtonTitle,
    translate,
    InsideComponent,
  } = props;

  const htmlNodeId = useMemo(() => {
    return name.replace(`[`, `_`).replace(`]`, `_`).replace(`.`, `_`);
  }, [name]);

  const {
    control,
    watch,
    trigger,
    formState,
    formState: { errors },
    setError,
    clearErrors,
  } = useFormContext();

  const {
    fields,
    append,
    prepend,
    remove,
    update,
    replace,
    swap,
    move,
    insert,
  } = useFieldArray({
    control,
    name,
    rules,
  });

  const watchData = watch();

  useEffect(() => {
    /**
     * When component renders validation isn't working
     * before you add first item to array
     */
    if (rules?.minLength && watchData && watchData[name]) {
      const inputErrors = errors[name];

      if (
        watchData[name].length < (rules?.minLength?.value || rules?.minLength)
      ) {
        if (!inputErrors) {
          setError(name, {
            type: `minLength`,
            message: rules.minLength?.message || `Lenth is wrong`,
          });
        }
      } else if (
        watchData[name].length >= (rules?.minLength?.value || rules?.minLength)
      ) {
        if (inputErrors?.type === `minLength`) {
          clearErrors(name);
          // console.log(`🚀 ~ useEffect ~ watchData[name]`, watchData[name]);
        }
      }
    }
  }, [rules, watchData]);

  useEffect(() => {
    if (initialValue) {
      const resInputs = [] as any;

      for (const [inputIndex, initValue] of initialValue.entries()) {
        const passToComponentInitialValue = {} as any;

        for (const input of inputs) {
          /**
           * initValue[input.name] is for 1 word keys for example "name"
           * initValue[snakeToCamel(input.name)] is for many words keys
           * for example postalCode on backend, but input key should be
           * postal_code
           */
          if (
            initValue[input.name] !== undefined ||
            initValue[snakeToCamel(input.name)] !== undefined
          ) {
            if (input.component === `file`) {
              // adding near Inputs component
            } else {
              if (initValue[input.name] !== undefined) {
                passToComponentInitialValue[input.name] = initValue[input.name];
              } else if (initValue[snakeToCamel(input.name)] !== undefined) {
                passToComponentInitialValue[input.name] =
                  initValue[snakeToCamel(input.name)];
              }
            }
          }
        }

        const clearedPass = camelCaseKeysToSnake(
          removeUnnecessaryKeys(passToComponentInitialValue, [`id`], inputs)
        );

        resInputs.push(clearedPass);
      }

      // Update or append not working correctly
      replace(resInputs);
    }
  }, [JSON.stringify(initialValue), JSON.stringify(inputs)]);

  const inputError = getInputErrors(errors)(name);

  const emptyValues = useMemo(() => {
    const initValues = {} as any;

    if (!baseKey) {
      return initValues;
    }

    inputs.map((input: any, index: number) => {
      initValues[input.name] = input.initialValue;
    });

    return initValues;
  }, [baseKey, inputs]);

  if (!baseKey) {
    return <></>;
  }

  return (
    <div className={className}>
      <div className="inputs__label">
        <label htmlFor={htmlNodeId}>
          {typeof translate === `function` && label ? translate(label) : label}
        </label>
      </div>
      <div id={htmlNodeId} className="repeatable__input">
        {fields.map((field: any, fieldIndex: number) => {
          return (
            <div className="repeatable__inputs" key={field.id}>
              {inputs.map((input: any, index: number) => {
                const additionalPropsForInput = {} as any;

                const inputName = `${parentKey ? `${parentKey}.` : ``}${String(
                  baseKey
                )}[${fieldIndex}].${input.name}`;

                const parentKeyName = `${
                  parentKey ? `${parentKey}.` : ``
                }${String(baseKey)}[${fieldIndex}]`;

                if (initialValue?.length) {
                  // if (input.component === `file`) {
                  for (const [
                    initialIndex,
                    initValue,
                  ] of initialValue.entries()) {
                    if (
                      initialIndex === fieldIndex &&
                      (initValue[input.name] !== undefined ||
                        initValue[snakeToCamel(input.name)] !== undefined)
                    ) {
                      additionalPropsForInput.initialValue =
                        initValue[input.name] ||
                        initValue[snakeToCamel(input.name)];
                    }
                  }
                  // }
                }

                return (
                  <Inputs
                    key={index}
                    {...input}
                    {...additionalPropsForInput}
                    translate={translate}
                    name={inputName}
                    parentKey={parentKeyName}
                    baseKey={input.name}
                    control={control}
                    globalErrors={errors}
                  />
                );
              })}

              {InsideComponent ? (
                <InsideComponent
                  translate={translate}
                  parentKey={parentKey}
                  baseKey={baseKey}
                  control={control}
                  field={field}
                  fieldIndex={fieldIndex}
                  snakeToCamel={snakeToCamel}
                  globalErrors={errors}
                  initialValue={initialValue}
                />
              ) : null}

              <div
                role="button"
                onClick={() => remove(fieldIndex)}
                className="remove__button"
              >
                <TrashIcon />
                <p>
                  {removeButtonTitle !== undefined
                    ? typeof translate === `function`
                      ? translate(removeButtonTitle)
                      : removeButtonTitle
                    : `${
                        typeof translate === `function`
                          ? translate(`Delete`)
                          : `Delete`
                      } ${label !== undefined ? label : ``}`}
                </p>
              </div>
            </div>
          );
        })}

        <div
          role="button"
          onClick={() => append(emptyValues)}
          className="add_button"
        >
          <PlusIcon />
          <p>
            {addButtonTitle !== undefined
              ? typeof translate === `function`
                ? translate(addButtonTitle)
                : addButtonTitle
              : `${
                  typeof translate === `function` ? translate(`Add`) : `Add`
                } ${label !== undefined ? label : ``}`}
          </p>
        </div>
      </div>
      {inputError?.message ? (
        <div className="inputs__error">
          <p>
            {typeof translate === `function`
              ? translate(inputError.message)
              : inputError.message}
          </p>
        </div>
      ) : null}
    </div>
  );
}
