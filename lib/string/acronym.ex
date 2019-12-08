defmodule Acronym do
  @spec abbreviate_simple(String.t) :: String.t
  def abbreviate_simple(title) do 
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
end