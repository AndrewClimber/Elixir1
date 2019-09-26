defmodule Drop do
  @moduledoc """
    case using.
  """
  def fall_velocity(where)  do
    {planemo, distance} = where
    if distance >= 0 do
      gravity = case planemo do
        :earth -> 9.8
        :moon  -> 1.6
        :mars  -> 3.71
        _      -> 0.0
      end
      :math.sqrt(2 * gravity * distance)
    else
      -11111
    end
  end

end
