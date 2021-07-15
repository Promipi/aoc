require String
require Enum

defmodule AOC do
  @moduledoc """
  Documentation for `AOC`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AOC.hello()
      :world
  """
  def hello do
    :world
  end

  def read_file(path) do
    {:ok,content} = File.read(path)
    String.split(content,"\n")
  end

  def string_list_to_int(string_list) do
    Enum.map(string_list,fn x -> String.to_integer(x) end)
  end

end
