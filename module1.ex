defmodule Calc do
	def fun(x,y) do
		IO.puts "sum of #{x} and #{y}=" <> to_string(x+y)
	end
end