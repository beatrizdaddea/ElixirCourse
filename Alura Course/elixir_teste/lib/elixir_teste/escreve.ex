defmodule Mix.Tasks.Escreve do
  @moduledoc """
  Documentação Completa da Tarefa

  `mix escreve`
  """

  use Mix.Task

  @shortdoc "Escreve um número aleatório no arquivo.txt"

  def run(_) do
    ElixirTeste.EscreveNumeroAleatorio.escreve
  end
end
