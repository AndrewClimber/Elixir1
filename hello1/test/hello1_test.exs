defmodule Hello1Test do
  use ExUnit.Case
  doctest Hello1

  test "greets the world" do
    assert Hello1.hello() == :world
  end
end
