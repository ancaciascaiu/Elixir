defmodule GameOfLifeTest do
  use ExUnit.Case
  doctest GameOfLife

  describe "any live cell" do
    test "with fewer that 2 live neighbors, it dies" do
      cell = %LiveCell{position: :upside_down}
      neighbors = [%LiveCell{}]
      assert %DeadCell{position: :upside_down} = GameOfLife.decide(cell, neighbors)
    end

    test "with exactly 2 live neighbors, it lives" do
      cell = %LiveCell{}
      neighbors = [%LiveCell{}, %LiveCell{}]
      assert %LiveCell{} = GameOfLife.decide(cell, neighbors)
    end

    test "with exactly 3 live neighbors, it lives" do
      cell = %LiveCell{}
      neighbors = [%LiveCell{}, %LiveCell{}, %LiveCell{}]
      assert %LiveCell{} = GameOfLife.decide(cell, neighbors)
    end

    test "with more than 3 live neighbors, it dies" do
      cell = %LiveCell{}
      neighbors = [%LiveCell{}, %LiveCell{}, %LiveCell{}, %LiveCell{}]
      assert %DeadCell{} = GameOfLife.decide(cell, neighbors)
    end
  end

  describe "any dead cell" do
    test "with exactly 3 live neighbors, it lives" do
      cell = %DeadCell{}
      neighbors = [%LiveCell{}, %LiveCell{}, %LiveCell{}]
      assert %LiveCell{} = GameOfLife.decide(cell, neighbors)
    end

    test "with less than 3 live neighbors, it dies" do
      cell = %DeadCell{}
      neighbors = [%LiveCell{}, %LiveCell{}]
      assert %DeadCell{} = GameOfLife.decide(cell, neighbors)
    end

    test "with more than 3 live neighbors, it dies" do
      cell = %DeadCell{}
      neighbors = [%LiveCell{}, %LiveCell{}, %LiveCell{}, %LiveCell{}]
      assert %DeadCell{} = GameOfLife.decide(cell, neighbors)
    end
  end
end
