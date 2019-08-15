ExUnit.start()

defmodule FizzBuzzTest do
  use ExUnit.Case

  test "print all numbers from 1 to 100" do
    result = FizzBuzz.fizz_buzz()
    assert Enum.count(result) == 100
    assert List.first(result) == 1
    assert List.last(result) == 100
  end

  test "for multiples of 3 print Fizz" do
  end

  test "for multiples of 5 print Buzz" do
  end

  test "for multiples of both 3 and 5 print FizzBuzz" do
  end
end
