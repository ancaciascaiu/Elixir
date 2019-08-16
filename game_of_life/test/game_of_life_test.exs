defmodule GameOfLifeTest do
  use ExUnit.Case
  doctest GameOfLife

  describe "any live cell" do
    test "with fewer that 2 live neighbors, it dies" do
      cell = %LiveCell{}
      neighbors = [%LiveCell{}]
      assert %DeadCell{} = GameOfLife.decide(cell, neighbors)
    end

    test "with exactly 2 live neighbors, it lives" do
    end

    test "with exactly 3 live neighbors, it lives" do
    end

    test "with more than 3 live neighbors, it dies" do
    end
  end

  describe "any dead cell" do
    test "with exactly 3 live neighbors, it lives" do
      cell = %DeadCell{}
      neighbors = [%LiveCell{}, %LiveCell{}, %LiveCell{}]
      assert %LiveCell{} = GameOfLife.decide(cell, neighbors)
    end

    test "with less than 3 live neighbors, it dies" do
    end

    test "with more than 3 live neighbors, it dies" do
    end
  end
end
