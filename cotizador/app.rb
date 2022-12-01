require_relative './model/calculador_ci'
require_relative './model/calculador_vm'
require_relative './model/controlador_de_entrada'

controlador = ControladorDeEntrada.new(ARGV[0])

valor_ci = CalculadorCI.new.calcular(controlador.cilindrada)
valor_vm = CalculadorVM.new.calcular(valor_ci, controlador.kilometraje)

puts "ci:#{valor_ci} & vm:#{valor_vm}"
