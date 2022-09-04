require_relative './model/lucha'
require_relative './model/luchador'
require_relative './model/controlador_de_entrada'
require_relative './model/arma'
require_relative './model/escenario'

ESCENARIO_DESCONOCIDO_ERROR = 'error: escenario desconocido'.freeze

escenario = ARGV[0]
tipo_luchador1 = ARGV[1]
arma_luchador1 = ARGV[2]
tipo_luchador2 = ARGV[3]
arma_luchador2 = ARGV[4]

lista_luchadores = [[tipo_luchador1, arma_luchador1], [tipo_luchador2, arma_luchador2]]
controlador = ControladorDeEntrada.new
luchadores = controlador.luchadores(lista_luchadores)

escenario_de_lucha = controlador.escenario(escenario)
if escenario_de_lucha == ESCENARIO_DESCONOCIDO_ERROR
  mensaje = ESCENARIO_DESCONOCIDO_ERROR
else
  resultado = Lucha.new(escenario_de_lucha).resultado(luchadores[0], luchadores[1])
  mensaje = "Resultado: #{resultado}"
end
puts mensaje.to_s
