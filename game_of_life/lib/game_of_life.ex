defmodule GameOfLife do
  def decide(%{status: :dead}, neighbors) do
    live_neighbors = count_live(neighbors)

    if live_neighbors == 3, do: %{status: :live}
  end

  def decide(%{status: :live}, neighbors) do
    live_neighbors = count_live(neighbors)

    if live_neighbors < 2, do: %{status: :dead}
  end

  defp count_live(cells) do
    cells
    |> Enum.filter(&(&1.status == :live))
    |> Enum.count()
  end
end
