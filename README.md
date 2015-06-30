ExcoverallsStringConcatenation
=============================

1. `mix deps.get`
2. `MIX_ENV=test mix coveralls.detail | less`

# Actual

Calls to `func` are marked as missed (red) when interpolated in second line of a two line string concatenation `<>`:

```elixir
 def call_in_map_value do
    %{
      key: "one " <>
           "#{func}" <>
           "three"
    }
  end

  def call_in_unnested do
    "one " <>
    "#{func}" <>
    "three"
  end
  
  def second_line_interpolation do
    "one " <>
    "#{func}"
  end
```

# Expected

Calls to `func` are marked as hit (green).

# Other test cases

## Call location

`func` is marked as hit when interpolated in the first line of a two line string concatenation or by itself:

```elixir
  def single_line_interpolation do
    "#{func}"
  end

  def first_line_interpolation do
    "#{func}" <>
    "three"
  end
```

## Interpolated value

Expressions that are compile time constants, such as `1 + 1`, are marked as hit:

```elixir
  def second_line_constant_interpolation do
    "one " <>
    "#{1 + 1}"
  end
```