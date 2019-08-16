defmodule FizzBuzz do
  def fizz_buzz do
    1..100
    |> Enum.to_list()
    |> Enum.map(fn number ->
      cond do
        rem(number, 3) == 0 && rem(number, 5) == 0 ->
          "FizzBuzz"

        rem(number, 3) == 0 ->
          "Fizz"

        rem(number, 5) == 0 ->
          "Buzz"

        true ->
          number
      end
    end)
    |> IO.inspect()
  end
end
