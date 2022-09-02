require_relative './model/lucha'

# Capa que recibe lo que ingresa el usuario
_luchador1 = ARGV[0]
_luchador2 = ARGV[1]

# Capa que implementa la logica de negocio
_resultado = Lucha.new

# Capa que muestra el resultado
puts 'Resultado: empate'
