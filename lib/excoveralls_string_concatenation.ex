defmodule ExcoverallsStringConcatenation do
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

  def map do
    %{
      key: "one " <>
           "two " <>
           "three"
    }
  end

  def single_line_interpolation do
    "#{func}"
  end

  def first_line_interpolation do
    "#{func}" <>
    "three"
  end

  def second_line_interpolation do
    "one " <>
    "#{func}"
  end

  def second_line_constant_interpolation do
    "one " <>
    "#{1 + 1}"
  end

  def unnested do
    "one " <>
    "two " <>
    "three"
  end

  defp func do
    "two "
  end
end
