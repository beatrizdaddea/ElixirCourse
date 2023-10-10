defmodule Muse.Music do
  def create("ok") do
    {:ok, %{title: "In the End", artist: "Linkin Park", album: "Meteora"}}
  end

  def create("error") do
    {:error, "Error While Createing Music"}
  end
end
