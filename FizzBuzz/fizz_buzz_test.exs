ExUnit.start()

defmodule FizzBuzzTest do
  use ExUnit.Case

  test "check that the methos is executed" do
    assert FizzBuzz.fizz_buzz() == "I'm here!!!!"
  end
end
