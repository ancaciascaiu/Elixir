defmodule GameOfLife do
  def decide(%DeadCell{}, neighbors) do
    live_neighbors = count_live(neighbors)

    cond do
      live_neighbors == 3 -> %LiveCell{}
      live_neighbors < 3 -> %DeadCell{}
      live_neighbors > 3 -> %DeadCell{}
    end
  end

  def decide(%LiveCell{}, neighbors) do
    live_neighbors = count_live(neighbors)

    cond do
      live_neighbors < 2 -> %DeadCell{}
      live_neighbors == 2 -> %LiveCell{}
      live_neighbors == 3 -> %LiveCell{}
      live_neighbors > 3 -> %DeadCell{}
    end
  end

  defp count_live(cells) do
    cells
    |> Enum.filter(&match?(%LiveCell{}, &1))
    |> Enum.count()
  end
end
