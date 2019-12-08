defmodule FactorialTailRecursionTest do
  use ExUnit.Case
  doctest FactorialTailRecursion

  test "Factorial of 11 is 39916800" do
    assert FactorialTailRecursion.fac(11) == 39916800
  end
end