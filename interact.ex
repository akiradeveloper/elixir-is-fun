defmodule Interact do
  def f() do
    s = IO.gets "user>"
    IO.puts s
    f()
  end
end

M.f()
