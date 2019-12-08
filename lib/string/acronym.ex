defmodule Acronym do
  @spec abbreviate(String.t) :: String.t
  def abbreviate(title) do 
    separated_names = String.split(title, " ")
    capitalized_letters = capitalized_letters(separated_names)
    Enum.join(capitalized_letters)
  end

  @spec capitalized_letters([String.t]) :: String.t
  defp capitalized_letters(names) do
    Enum.map(names, fn(name)-> 
      first_letter = String.first(name)
      String.capitalize(first_letter)
    end)
  end

  # Using pipes and sanitizing names

  @spec abbreviate2([String.t]) :: [String.t]
  def sanitize(names) do 
    Enum.filter(names, fn(name)-> 
      not Enum.member?(["de", "e"], name)
    end)
  end

  @spec abbreviate2(String.t) :: String.t
  def abbreviate2(title) do 
    String.split(title, " ")
    |> sanitize()
    |> capitalized_letters2()
    |> Enum.join()
  end

  @spec capitalized_letters([String.t]) :: String.t
  defp capitalized_letters2(names) do
    Enum.map(names, fn(name)-> 
      String.first(name)
      |> String.capitalize()
    end)
  end
end