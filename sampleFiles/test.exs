defmodule LanguageFeaturesTest do
  # Variables
  test "variables" do
    x = 10
    y = "Hello, World!"
    assert x == 10
    assert y == "Hello, World!"
  end

  # Anonymous Functions
  test "anonymous functions" do
    add = fn a, b -> a + b end
    assert add.(1, 2) == 3
  end

  # Guards
  def abs(x) when x < 0, do: -x
  def abs(x), do: x

  test "guards" do
    assert abs(-5) == 5
    assert abs(3) == 3
  end

  # Control Structures
  test "control structures" do
    result =
      cond do
        1 + 1 == 3 -> "This will never match"
        2 * 2 == 5 -> "This will never match"
        true -> "This will always match"
      end

    assert result == "This will always match"
  end

  # Recursion
  defp factorial(0), do: 1
  defp factorial(n), do: n * factorial(n - 1)

  test "recursion" do
    assert factorial(5) == 120
  end

  # Sigils
  test "sigils" do
    regex = ~r/hello/i
    assert "Hello, World!" =~ regex
  end
end
