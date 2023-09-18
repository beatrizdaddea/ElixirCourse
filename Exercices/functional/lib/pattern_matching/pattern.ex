defmodule Functional.Pattern do
  def map_user(%{role: "admin"} = params) do
    params
  end

  def map_user(%{role: "user"}) do
    "Welcome User"
  end

  def map_user(%{role: _role}) do
    "Not Found 404"
  end

  def map_user(_) do
    {:error, "wrong parameters"}
  end

  def handle_result({:ok, result}), do: result
  def handle_result({:error, reason}), do: "Error: #{reason}"

end
