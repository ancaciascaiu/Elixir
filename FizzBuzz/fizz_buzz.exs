defmodule FizzBuzz do
  def fizz_buzz do
    1..100
    |> Enum.to_list()
    |> Enum.map(&convert(&1))
    |> IO.inspect()
  end

  # # first try
  # defp convert(number) do
  #   cond do
  #     rem(number, 3) == 0 && rem(number, 5) == 0 ->
  #       "FizzBuzz"

  #     rem(number, 3) == 0 ->
  #       "Fizz"

  #     rem(number, 5) == 0 ->
  #       "Buzz"

  #     true ->
  #       number
  #   end
  # end

  # using case
  defp convert(number) do
    case number do
      number when rem(number, 15) == 0 ->
        "FizzBuzz"

      number when rem(number, 3) == 0 ->
        "Fizz"

      number when rem(number, 5) == 0 ->
        "Buzz"

      _ ->
        number
    end
  end
end

# # Matt Willy's solution
# defmodule FizzBuzz do
#   def fizz_buzz do
#     1..100
#     |> Enum.to_list()
#     |> Enum.map(&fizz_buzz_helper(rem(&1, 3), rem(&1, 5), &1))
#     |> IO.inspect()
#   end

#   defp fizz_buzz_helper(0, 0, _), do: "FizzBuzz"
#   defp fizz_buzz_helper(0, _, _), do: "Fizz"
#   defp fizz_buzz_helper(_, 0, _), do: "Buzz"
#   defp fizz_buzz_helper(_, _, number), do: number
# end
