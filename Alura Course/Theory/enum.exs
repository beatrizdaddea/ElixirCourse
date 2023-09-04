# Uma lista de números
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Usando Enum.filter/2 para filtrar os números pares
numeros_pares = Enum.filter(numeros, fn numero -> rem(numero, 2) == 0 end)

# Usando Enum.reduce/2 para calcular a soma dos números pares
soma_pares = Enum.reduce(numeros_pares, 0, fn numero, acc -> numero + acc end)

IO.puts("Números pares: #{inspect(numeros_pares)}")
IO.puts("Soma dos números pares: #{soma_pares}")
