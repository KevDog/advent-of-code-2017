defmodule Day4 do
   @moduledoc """
  Documentation for Aoc.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aoc.hello
      :world

  """
  def validPassphrase?(input) when is_bitstring input do
    input
    |> String.split
    |> Enum.map(fn(x) -> String.to_charlist(x) end)
    |> Enum.map(fn(x) -> Enum.sort(x) end)
    |> Enum.uniq
    |> Enum.count == Enum.count(String.split(input))
  end

  def countValidPassphrases(data) when is_list data do
    Enum.filter(data, fn(x) -> validPassphrase?(x) end)
    |> Enum.count
  end

  
end
