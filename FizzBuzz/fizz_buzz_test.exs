# run tests with `elixir -r fizz_buzz.exs fizz_buzz_test.exs`
ExUnit.start()

defmodule FizzBuzzTest do
  use ExUnit.Case

  test "print all numbers from 1 to 100" do
    result = FizzBuzz.fizz_buzz()

    assert Enum.count(result) == 100
    assert List.first(result) == 1
    assert List.last(result) == "Buzz"
  end

  test "for multiples of 3 print Fizz" do
    result = FizzBuzz.fizz_buzz()

    assert nil == Enum.find(result, &match?(3, &1))

    [1, 2, three | _] = result
    assert three == "Fizz"
  end

  test "for multiples of 5 print Buzz" do
    result = FizzBuzz.fizz_buzz()

    assert nil == Enum.find(result, &match?(5, &1))

    [1, 2, "Fizz", 4, five | _] = result
    assert five == "Buzz"
  end

  test "for multiples of both 3 and 5 print FizzBuzz" do
    result = FizzBuzz.fizz_buzz()

    assert Enum.at(result, 14) == "FizzBuzz"
  end
end
