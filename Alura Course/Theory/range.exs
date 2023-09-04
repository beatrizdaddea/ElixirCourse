defmodule SomaQuadrados do
  def calcular_soma_quadrados(inicio, fim) when inicio <= fim do
    range = inicio..fim
    soma = Enum.reduce(range, 0, fn numero, acc -> acc + numero * numero end)
    IO.puts("A soma dos quadrados de #{inicio} a #{fim} é #{soma}.")
  end

  def calcular_soma_quadrados(_, _) do
    IO.puts("O início deve ser menor ou igual ao fim.")
  end
end

# Para calcular a soma dos quadrados de 1 a 5:
SomaQuadrados.calcular_soma_quadrados(1, 5)
