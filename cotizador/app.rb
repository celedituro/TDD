require_relative './model/calculador_ci'
require_relative './model/calculador_vm'
require_relative './model/controlador_de_entrada'
require_relative './model/presentador_de_resultado'
require_relative './model/factory_tipo_vehiculo'
require_relative './model/tipo_vehiculo'
require_relative './model/factory_calculador_vm'
require_relative './model/errors/tipo_vehiculo_invalido'
require_relative './model/factory_cilindrada'
require_relative './model/errors/cilindrada_invalida'
require_relative './model/parseador_cotizador'
require_relative './model/cotizador'

begin
  controlador = ControladorDeEntrada.new(ARGV[0])
  cotizador = Cotizador.new(controlador.tipo, controlador.cilindrada, controlador.kilometraje)
rescue TipoVehiculoInvalido => e
  puts e
rescue CilindradaInvalida => e
  puts e
else
  presentador = PresentadorDeResultado.new(cotizador.calcular_ci, cotizador.calcular_vm)
  puts presentador.resultado
end
