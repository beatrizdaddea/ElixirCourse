defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) when multiplicador > 0 do
      tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(produto1, produto2, valores) do
    novos_valores = [produto1 * produto2] ++valores
    tabuada(produto1, produto2 + 1, novos_valores)
  end
end
