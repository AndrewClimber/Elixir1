defmodule Fact do
  @moduledoc """
  This recursion examples by calculating factorial of any positive number
  """

  @doc """
  Calculate factorial .
  """
  def factorial(n) when n > 1 do
    n * factorial(n-1)
  end

  def factorial(n) when n <= 1 do
    1
  end

  @doc """
  Calculate factorial. And show the process of its calculation
  """
  def factorial_instr(n) when n > 1 do
    IO.puts("Calling from #{n}.")
    result = n * factorial_instr(n - 1)
    IO.puts("#{n} yields #{result}.")
    result
  end

  def factorial_instr(n) when n <= 1 do
    IO.puts("Calling from 1.")
    IO.puts("1 yields 1.")
    1
  end

  @doc """
  This Factorial calculating by method "from down to up"
  """
  def factorial_up(n) do
    factorial_up(1, n, 1)
  end

  defp factorial_up(current, n, result) when current <= n do
    new_result = result * current
    IO.puts("#{current} yields #{new_result}.")
    factorial_up(current + 1, n, new_result)
  end

  defp factorial_up(_current, _n, result) do
    IO.puts("finished!")
    result
  end

end
