require_relative './model/lucha'

# Capa que recibe lo que ingresa el usuario
arma_luchador1 = ARGV[2]
arma_luchador2 = ARGV[4]

# Capa que implementa la logica de negocio
resultado = Lucha.new.obtener_resultado(arma_luchador1, arma_luchador2)

# Capa que muestra el resultado
puts "Resultado: #{resultado}"
