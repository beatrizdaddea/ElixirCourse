defmodule Functional do
  def hello do
    %{name: "Beatriz", age: 23, cpf: "12345678900"}
    |> put_map(:name, "João")
    |> put_map(:age, 35)
    |> Enum.map(fn {_key, value} -> value end)
  end

  defp put_map(map, key, value), do: Map.put(map, key, value)
  defp delete_map_value(map, key), do: Map.delete(map, key)
end
