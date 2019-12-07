defmodule ElixirWithAlgorithmsTest do
  use ExUnit.Case
  doctest ElixirWithAlgorithms

  test "greets the world" do
    assert ElixirWithAlgorithms.hello() == :world
  end
end
