defmodule SchemaTest do
  use ExUnit.Case

  describe "schema object" do
    defmodule FakeSchemaObject do
      use Schema

      schema do
        field(:name)
        field(:hobbies)
      end
    end

    test "creates the proper struct" do
      schema_object = %FakeSchemaObject{name: "Popeye", hobbies: "eating spinach"}

      assert schema_object.name == "Popeye"
      assert schema_object.hobbies == "eating spinach"
    end
  end
end
