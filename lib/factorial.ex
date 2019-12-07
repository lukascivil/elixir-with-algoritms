defmodule Factorial do
  @spec fac(number) :: integer
  def fac(0), do: 1
  def fac(n) when n > 0 do
    n * fac(n - 1)
  end
end
