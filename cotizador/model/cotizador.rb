class Cotizador
  def initialize(vehiculo)
    @vehiculo = vehiculo
    @calculador_ci = CalculadorCI.new
    @calculador_vm = FactoryCalculadorVM.new.calculador(@vehiculo)
  end

  def calcular_ci
    @calculador_ci.calcular(@vehiculo)
  end

  def calcular_vm
    valor_ci = calcular_ci
    @calculador_vm.calcular(valor_ci, @vehiculo)
  end
end
