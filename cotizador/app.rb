require_relative './model/calculador_ci'
require_relative './model/calculador_vm'
require_relative './model/controlador_de_entrada'
require_relative './model/presentador_de_resultado'
require_relative './model/factory_vehiculo'
require_relative './model/vehiculo'
require_relative './model/factory_calculador_vm'
require_relative './model/errors/tipo_vehiculo_invalido'
require_relative './model/factory_cilindrada'
require_relative './model/errors/cilindrada_invalida'
require_relative './model/parseador_cotizador'
require_relative './model/cotizador'
require_relative './model/errors/kilometraje_invalido'

begin
  vehiculo = ControladorDeEntrada.new(ARGV[0]).crear_vehiculo
  cotizador = Cotizador.new(vehiculo)
  presentador = PresentadorDeResultado.new
  puts presentador.presentar_resultado(cotizador)
rescue StandardError => e
  presentador = PresentadorDeResultado.new
  puts presentador.presentar_error(e)
end
