defmodule FizzBuzz do
  def fizz_buzz do
    1..100
    |> Enum.to_list()
    |> Enum.map(fn number ->
      cond do
        rem(number, 3) == 0 ->
          "Fizz"

        true ->
          number
      end
    end)
    |> IO.inspect()
  end
end
