defmodule LanguageFeaturesTest do
  # Variables
  test "variables" do
    x = 10
    y = "Hello, World!"
    assert x == 10
    assert y == "Hello, World!"
  end

  # Functions
  def greet(name) do
    "Hello, #{name}!"
  end

  test "functions" do
    assert greet("Alice") == "Hello, Alice!"
  end

  # Pattern Matching
  def match_tuple({a, b}) do
    a + b
  end

  test "pattern matching" do
    assert match_tuple({1, 2}) == 3
  end

  # Pipe Operator
  def square(x) do
    x * x
  end

  def sum_squares(a, b) do
    a |> square() |> Kernel.+(square(b))
  end

  test "pipe operator" do
    assert sum_squares(3, 4) == 25
  end

  # Modules and Structs
  defmodule Person do
    defstruct name: "", age: 0
  end

  test "modules and structs" do
    person = %Person{name: "Bob", age: 30}
    assert person.name == "Bob"
    assert person.age == 30
  end

  # Enums and Streams
  test "enums and streams" do
    result =
      [1, 2, 3, 4, 5]
      |> Enum.filter(&(rem(&1, 2) == 0))
      |> Enum.map(&square/1)
      |> Enum.sum()

    assert result == 20
  end
end