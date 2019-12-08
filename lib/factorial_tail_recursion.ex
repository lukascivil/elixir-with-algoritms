defmodule FactorialTailRecursion do
  @spec fac(number) :: integer
  def fac(n), do: fac(n, 1)

  @spec fac(0, number) :: integer
  defp fac(0, accumulator), do: accumulator

  @spec fac(number, number) :: integer
  defp fac(n, accumulator) do
    fac(n-1, accumulator*n)
  end
end
