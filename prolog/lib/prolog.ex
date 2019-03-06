defmodule Prolog do
  @moduledoc """
  Documentation for Prolog.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Prolog.hello()
      :world

  """

  # Prolog.my_last([1,2,3,4])
  def my_last(list) do
      case list do
        [] -> nil
        [only] -> only
        [_first | last] -> my_last(last)
      end
  end

  def my_sec_last(list) do
    case list do
      [] -> nil
      [_only] -> nil
      [first | [_second]] -> first
      [_first| second] -> my_sec_last(second)
    end
  end

  def length([]) do
    plength([], 0)
  end

  def length(list) do
    plength(list,0)
  end

  defp plength([],counter) do
    counter
  end

  defp plength([_h|t],counter) do
    plength(t,counter+1)
  end

  def reverse(list) do
    reverse_it(list, [])
  end

  defp reverse_it([], reversed_val) do
    reversed_val
  end

  defp reverse_it([first|last], reversed_val) do
    reverse_it(last, [first|reversed_val])
  end

    def element_at([],_n) do
      nil
    end

    def element_at(list,n) do
      find_elem(list,n,1)
    end

    defp find_elem([h|_t],n,n) do
      h
    end

    defp find_elem([_h|t],n,counter) do
      find_elem(t,n,counter+1)
    end


end
