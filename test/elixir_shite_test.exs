defmodule ElixirShiteTest do
  use ExUnit.Case
  doctest ElixirShite

  test "greets the world" do
    assert ElixirShite.hello() == :world
  end
end
