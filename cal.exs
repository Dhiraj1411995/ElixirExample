defmodule Calculator do
  def sum(a, b) do
    a + b
  end
  def sub(a,b) do
    a-b
  end
  def mult(a,b) do
    a*b
  end
  def division(a,b) do
    a/b
  end

IO.puts(Calculator.sum(2,3))
IO.puts(Calculator.sub(2,3))
IO.puts(Calculator.mult(2,3))
IO.puts(Calculator.division(2,3))
end