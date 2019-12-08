defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "Fibonacci of 11 is 89" do
    assert Fibonacci.calculate(11) == 89
  end
end
