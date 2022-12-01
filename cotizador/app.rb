require_relative './model/calculador_ci'
require_relative './model/calculador_vm'
require_relative './model/controlador_de_entrada'
require_relative './model/presentador_de_resultado'

controlador = ControladorDeEntrada.new(ARGV[0])

valor_ci = CalculadorCI.new.calcular(controlador.cilindrada)
valor_vm = CalculadorVM.new.calcular(valor_ci, controlador.kilometraje)

presentador = PresentadorResultado.new(valor_ci, valor_vm)
puts presentador.resultado
