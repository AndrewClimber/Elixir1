defmodule Bounce do
  @moduledoc """
  Process example.
  """
  #def report do
  def report(count) do
    receive do
      #msg -> IO.puts("Received #{msg}")
      #report()
      msg -> IO.puts("Received #{count}: #{msg}")
      report(count + 1)
    end
  end

end
