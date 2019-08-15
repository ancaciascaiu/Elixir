ExUnit.start()

defmodule FizzBuzzTest do
  use ExUnit.Case

  test "print all numbers from 1 to 100" do
    result = FizzBuzz.fizz_buzz()
    assert Enum.count(result) == 100
    assert List.first(result) == 1
    assert List.last(result) == 100
  end
end
