# Usage :
# 1. Hof.tripler(6, fn(value) -> 20 * value end)
# 2. ampersand_function = &(20 * &1)
#    Hof.tripler(6, ampersand_function)
# 3. Hof.tripler(6, &(20 * &1))

'''
 Closure example :
 iex(7)> x = 20
20
iex(8)> my_function2 = fn(value) -> x * value end
#Function<6.106461118/1 in :erl_eval.expr/5>
iex(9)> x = 0
0
iex(10)> my_function2.(6)
120

Another closure example :
iex(11)> x = 20
20
iex(12)> my_function3 = &(x * &1)
#Function<6.106461118/1 in :erl_eval.expr/5>
iex(13)> x = 0
0
iex(14)> Hof.tripler(6, my_function3)
360
'''
# iex(15)> Hof.tripler(:math.pi, &:math.cos(&1))
#-3.0

defmodule Hof do
  def tripler(value, function) do
    3 * function.(value)
  end
end
