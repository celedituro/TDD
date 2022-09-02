require_relative './model/lucha'
require_relative './model/luchador'
require_relative './model/controlador_de_entrada'

# Capa que recibe lo que ingresa el usuario
arma_luchador1 = ARGV[2]
arma_luchador2 = ARGV[4]

luchadores = ControladorDeEntrada.new.obtener_luchadores(arma_luchador1, arma_luchador2)

# Capa que implementa la logica de negocio
resultado = Lucha.new.obtener_resultado(luchadores[0], luchadores[1])

# Capa que muestra el resultado
puts "Resultado: #{resultado}"
