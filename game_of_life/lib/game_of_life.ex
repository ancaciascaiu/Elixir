defmodule GameOfLife do
  def decide(%DeadCell{}, neighbors) do
    live_neighbors = count_live(neighbors)

    if live_neighbors == 3, do: %LiveCell{}
  end

  def decide(%LiveCell{}, neighbors) do
    live_neighbors = count_live(neighbors)

    if live_neighbors < 2, do: %DeadCell{}
  end

  defp count_live(cells) do
    cells
    |> Enum.filter(&match?(%LiveCell{}, &1))
    |> Enum.count()
  end
end
