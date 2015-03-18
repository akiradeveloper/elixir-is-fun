# Any function should be defined inside module?
# Without this, compiler fails
defmodule Fn do
  @moduledoc """
  provides factorial
  """

  # Define prototype
  @doc """
  compute factorial of given number x
  """
  def f(x)

  # Order is important. Don't swap with the recursive part
  def f(x) when x == 1 do
    1 
  end

  def f(x) do
    x * f(x-1)
  end
end

IO.puts M.f(3)
1 |> IO.puts
f = fn x -> x + 1 end
g = &(&1 + 1)
f.(1) |> IO.puts
g.(1) |> IO.puts
