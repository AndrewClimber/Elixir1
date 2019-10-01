"""
Create a function (or write a script in Shell) that takes an integer as an argument
and returns "Even" for even numbers or "Odd" for odd numbers.
"""
defmodule Codewars do
import Integer
  def even_or_odd(number) when is_even(number) do  "Even" end
  def even_or_odd(number) when is_odd(number)  do  "Odd"  end
end
