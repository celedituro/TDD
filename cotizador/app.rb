require_relative './model/calculador_ci'
require_relative './model/calculador_vm'
require_relative './model/controlador_de_entrada'
require_relative './model/presentador_de_resultado'
require_relative './model/factory_tipo_vehiculo'
require_relative './model/tipo_vehiculo'

controlador = ControladorDeEntrada.new(ARGV[0])

valor_ci = CalculadorCI.new.calcular(controlador.tipo, controlador.cilindrada)
valor_vm = CalculadorVM.new.calcular(controlador.tipo, valor_ci, controlador.kilometraje)

presentador = PresentadorResultado.new(valor_ci, valor_vm)
puts presentador.resultado
