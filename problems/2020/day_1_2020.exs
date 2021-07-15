
defmodule AOC_2020.Problem1 do
  def part1(numbers) do
    numbers
    |> Enum.flat_map(fn i -> numbers |> Enum.map(fn j -> {i, j} end) end) #groups the numbers, each j with each i
    |> Enum.map(fn {a, b} -> {a + b, {a, b}} end) #returns a new structure {sum ,{a, b}}
    |> Enum.filter(fn {sum, {a, b}} -> sum == 2020 end) #filters the new structure to obtain the object in which the sum equals 2020
    |> Enum.at(0) #returns the unique element
  end

  def part2(numbers) do
    numbers
    |> Enum.flat_map(fn i -> numbers |> Enum.flat_map(fn j -> numbers |> Enum.map(fn k -> {i, j, k} end) end ) end) #groups the numbers, each k wich each j and each j with each i
    |> Enum.map(fn {a, b, c} -> {a + b + c, {a, b, c}} end )#returns a new structure {sum, {a, b, c}}
    |> Enum.filter(fn {sum, {a, b, c}} -> sum == 2020 end) #filters the new structure to obtain the object in which the sum equals 2020
    |> Enum.at(0) #returns the unique element
  end
end

#test cases
input = AOC.string_list_to_int(AOC.read_file("problems/2020/input_1_2020.txt") )
#part1
{sum,{a,b}} = AOC_2020.Problem1.part1(input)
IO.puts("result_1 : #{a*b} ")
#part2
{sum, {a, b, c}} = AOC_2020.Problem1.part2(input)
IO.puts("result_2 : #{a*b*c} ")
