require_relative './model/lucha'
require_relative './model/luchador'
require_relative './model/controlador_de_entrada'

# Capa que recibe lo que ingresa el usuario
escenario = ARGV[0]
tipo_luchador1 = ARGV[1]
arma_luchador1 = ARGV[2]
tipo_luchador2 = ARGV[3]
arma_luchador2 = ARGV[4]

lista_luchadores = [[tipo_luchador1, arma_luchador1], [tipo_luchador2, arma_luchador2]]
luchadores = ControladorDeEntrada.new.luchadores(lista_luchadores)

# Capa que implementa la logica de negocio
resultado = Lucha.new.resultado(luchadores[0], luchadores[1], escenario)

# Capa que muestra el resultado
puts "Resultado: #{resultado}"
