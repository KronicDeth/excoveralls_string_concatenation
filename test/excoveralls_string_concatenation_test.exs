defmodule ExcoverallsStringConcatenationTest do
  use ExUnit.Case

  import ExcoverallsStringConcatenation

  test "map value with function call" do
    assert call_in_map_value[:key] == "one two three"
  end

  test "map value" do
    assert map[:key] == "one two three"
  end

  test "unnested" do
    assert unnested == "one two three"
  end

  test "unnested with function call" do
    assert call_in_unnested == "one two three"
  end

  test "single line interpolation" do
    assert single_line_interpolation == "two "
  end

  test "first line interpolation" do
    assert first_line_interpolation == "two three"
  end

  test "second line interpolation" do
    assert second_line_interpolation == "one two "
  end

  test "second line constant interpolation" do
   assert second_line_constant_interpolation == "one 2"
  end
end
