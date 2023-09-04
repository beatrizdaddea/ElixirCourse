defmodule ExemploStreams do
  defp fibonacci() do
    Stream.unfold({0, 1}, fn {a, b} ->
      {a, {b, a + b}}
    end)
  end

  defp filtrar_pares(stream) do
    Stream.filter(stream, fn n -> rem(n, 2) == 0 end)
  end

  defp imprimir(stream, n) when n > 0 do
    [resultado | _] = Enum.take(stream, n)
    IO.inspect(resultado)
  end

  def imprimir_fibonacci_pares(n) when n > 0 do
    stream = fibonacci()
    stream
    |> filtrar_pares()
    |> imprimir(n)
  end
end

# Exemplo de uso:
ExemploStreams.imprimir_fibonacci_pares(10)
