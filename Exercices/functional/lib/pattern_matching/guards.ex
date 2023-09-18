defmodule Functional.Guards do
  def evaluate(elem)when elem < 0 and is_number(elem) do
    {:error, "Please Provide a Positive Number"}
  end

  def evaluate(elem) when is_number(elem) do
    {:ok, elem + 1}
  end

  def evaluate(elem) do
    {:error, "Please Provide a Number"}
  end
end
