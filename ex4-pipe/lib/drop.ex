defmodule Drop do
  @moduledoc """
  Drop module
  """


  @doc """
  speed calculates
  """

  @spec fall_velocity(number()) :: float()
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
end
