```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.map
Enum.map(list, fn x ->
  if x == 3 do
    :skipped # Or any other value to represent the skipped element
  else
    IO.puts(x)
    x
  end
end)

# Solution 2: Using a try-catch block (if exception is required)
try do
  Enum.each(list, fn x ->
    if x == 3 do
      raise "Value 3 encountered"
    end
    IO.puts(x)
  end)
rescue
  e -> IO.puts("Error: " <> to_string(e))
end
```