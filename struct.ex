defmodule StructT do
  defstruct name: "akira", age: 30

  # We need "," after method name
  def t1, do: {:hoge, :hige}
  def l1, do: [{:a, 1}, {:b, 2}]
  def l2, do: [a: 1, b: 2]
end

IO.inspect StructT.t1
IO.inspect StructT.l1
IO.inspect StructT.l2
IO.puts StructT.l1 == StructT.l2

defmodule Main do
  def main() do
    IO.inspect StructT.t1
    IO.inspect StructT.l1
    IO.inspect StructT.l2
    IO.puts StructT.l1 == StructT.l2
    IO.inspect %StructT {}
    akira = %StructT {}
    IO.inspect akira
  end
end

# cannot access struct StructT, the struct was not yet defined or the struct is being accessed in the same context that defines it
# akira = %StructT {}
# IO.inspect akira
Main.main()
