defmodule Hello1 do
  @moduledoc """
  Documentation for Hello1.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hello1.hello()
      :world

  """
  def hello do
    :world
  end

  def hi do
    IO.puts("Hi word!!!")
  end

  def multic2(n) do
    IO.puts n*2
  end



end
