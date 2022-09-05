require_relative './model/lucha'
require_relative './model/luchador'
require_relative './model/controlador_de_entrada'
require_relative './model/arma'
require_relative './model/escenario'

ESCENARIO_DESCONOCIDO_ERROR = 'error: escenario desconocido'.freeze

controlador = ControladorDeEntrada.new(ARGV)

lucha = controlador.crear_lucha
if lucha == ESCENARIO_DESCONOCIDO_ERROR
  puts ESCENARIO_DESCONOCIDO_ERROR
else
  resultado = lucha.resultado
  puts "Resultado: #{resultado}"
end
