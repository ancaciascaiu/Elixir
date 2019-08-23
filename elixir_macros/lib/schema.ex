defmodule Schema do
  defmacro __using__(_) do
    quote do
      import Schema, only: [schema: 1]
    end
  end

  defmacro schema(do: block) do
    prelude =
      quote do
        import Schema, only: [field: 1]
        Module.register_attribute(__MODULE__, :schema_fields, accumulate: true)
      end

    postlude =
      quote do
        schema_fields = Module.get_attribute(__MODULE__, :schema_fields)
        defstruct schema_fields
      end

    quote do
      unquote(prelude)
      unquote(block)
      unquote(postlude)
    end
  end

  defmacro field(field_name) do
    quote do
      Module.put_attribute(__MODULE__, :schema_fields, unquote(field_name))
    end
  end
end
