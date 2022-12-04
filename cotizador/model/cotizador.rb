class Cotizador
  def initialize(tipo, cilindrada, kilometraje)
    @tipo = tipo
    @cilindrada = cilindrada
    @kilometraje = kilometraje
    @calculador_ci = CalculadorCI.new
    @calculador_vm = FactoryCalculadorVM.new.calculador(@tipo)
  end

  def calcular_ci
    @calculador_ci.calcular(@tipo, @cilindrada)
  end

  def calcular_vm
    valor_ci = calcular_ci
    @calculador_vm.calcular(valor_ci, @kilometraje, @cilindrada)
  end
end
