defmodule Count do
  @moduledoc """
  This is recursion examples
  """
  def countdown(from) when from > 0 do
    IO.puts(from)
    countdown(from-1)
  end

  defp countdown(_from) do
    IO.puts("blastoff")
  end

  def countup(to) do
    countup(1,to)
  end
@doc """
countup/2 is basic private function
"""
  defp countup(from, to)  when from <= to do
    IO.puts(from)
    countup(from+1, to)
  end

  defp countup(_,_) do
    IO.puts("blastoff")
  end
end
