defmodule ExemploPipe do
  def filtrar_nomes(lista, letra_inicial) do
    lista
    |> Enum.filter(fn nome -> String.starts_with?(String.upcase(nome), letra_inicial) end)
    |> Enum.map(&String.upcase/1)
    |> Enum.sort()
  end
end

# Exemplo de uso:
nomes = ["Alice", "Bob", "Carlos", "David", "Eva", "Frank"]
letra = "C"

nomes_filtrados = ExemploPipe.filtrar_nomes(nomes, letra)
IO.inspect(nomes_filtrados)
