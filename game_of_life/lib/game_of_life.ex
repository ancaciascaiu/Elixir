defmodule GameOfLife do
  def decide(cell, neighbors) do
    live_cell_count =
      neighbors
      |> Enum.filter(&(&1.status == :live))
      |> Enum.count()

    if live_cell_count < 2, do: %{status: :dead}
  end
end
