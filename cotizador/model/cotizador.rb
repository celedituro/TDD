class Cotizador
  def initialize(vehiculo)
    @vehiculo = vehiculo
    @calculador_ci = CalculadorCI.new
    @calculador_vm = FactoryCalculadorVM.new.calculador(@vehiculo.tipo)
  end

  def calcular_ci
    @calculador_ci.calcular(@vehiculo.tipo, @vehiculo.cilindrada)
  end

  def calcular_vm
    valor_ci = calcular_ci
    @calculador_vm.calcular(valor_ci, @vehiculo.kilometraje, @vehiculo.cilindrada)
  end
end
