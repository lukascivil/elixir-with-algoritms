defmodule AcronymTest do
  use ExUnit.Case
  doctest Acronym

  test "Acronym of 'Instituto Brasileiro de Geografia e Estatística' is 'IBDGEE'" do
    assert Acronym.abbreviate("Instituto Brasileiro de Geografia e Estatística") == "IBDGEE"
  end

  test "Acronym of 'Instituto Brasileiro de Geografia e Estatística' is 'IBGE' sanitized" do
    assert Acronym.abbreviate2("Instituto Brasileiro de Geografia e Estatística") == "IBGE"
  end
end
