defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) when multiplicador > 0 do
      tabuada(multiplicador, 1)
  end

  defp tabuada(_, 11), do: []

  defp tabuada(produtol, produto2) do
    [produtol * produto2] ++ tabuada(produtol, produto2 + 1)
  end
end
