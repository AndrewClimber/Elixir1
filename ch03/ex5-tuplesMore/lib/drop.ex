defmodule Drop do
  @moduledoc """
  Using tuples.
  """

  def fall_velocity(where) when elem(where,1) >= 0 do
   {planemo, distance} = where
   fall_velocity(planemo, distance)
  end

  def fall_velocity(where) when elem(where,1) < 0 do
   #IO.puts("ERR: distance < 0")
   -11111111111
  end

@doc """
private functions
"""
  defp fall_velocity(:earth, distance) do
   :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
   :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
   :math.sqrt(2 * 3.71 * distance)
  end


end
