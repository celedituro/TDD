require_relative './model/calculador_ci'
require_relative './model/calculador_vm'

args = ARGV[0]

cilindrada = args[5..8].to_i
km = args[10..14].to_i

valor_ci = CalculadorCI.new.calcular(cilindrada)
valor_vm = CalculadorVM.new.calcular(valor_ci, km)

puts "ci:#{valor_ci} & vm:#{valor_vm}"
