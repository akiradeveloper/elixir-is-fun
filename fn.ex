# Any function should be defined inside module?
# Without this, compiler fails
defmodule M do

  # Order is important. Don't swap with the recursive part
  def f(x) when x == 1 do
    1 
  end

  def f(x) do
    x * f(x-1)
  end
end

IO.puts M.f(3)
