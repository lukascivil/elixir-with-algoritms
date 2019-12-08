defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  test "say hello" do
    assert Hello.say() == :hello
  end
end
