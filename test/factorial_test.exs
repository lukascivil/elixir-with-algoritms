defmodule FactorialTest do
  use ExUnit.Case
  doctest Factorial

  test "Factorial of 11 is 39916800" do
    assert Factorial.fac(11) == 39916800
  end
end
