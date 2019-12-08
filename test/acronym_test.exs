defmodule AcronymTest do
  use ExUnit.Case
  doctest Acronym

  test "Acronym of 'Instituto Brasileiro de Geografia e Estatística' is 'IBGE'" do
    assert Acronym.abbreviate_simple("Instituto Brasileiro de Geografia e Estatística") == "IBGE"
  end
end
