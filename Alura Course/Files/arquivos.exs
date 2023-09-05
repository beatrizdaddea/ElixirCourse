defmodule MeuModulo.Arquivo do
  def ler(arquivo) do
    {:error, erro} = File.read(arquivo)
    erro
  end
end
