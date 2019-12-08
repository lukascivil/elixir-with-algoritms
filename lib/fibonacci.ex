defmodule Fibonacci do
  @spec calculate(number) :: integer
  def calculate(0), do: 0
  def calculate(1), do: 1
  def calculate(n) when n > 0 do
    calculate(n - 2) + calculate(n - 1)
  end
end
