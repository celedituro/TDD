class FactoryCalculadorVM
  def initialize
    @calculadores = {'auto' => CalculadorVMAuto.new.clone,
                     'camioneta' => CalculadorVMCamioneta.new.clone,
                     'camion' => CalculadorVMCamion.new.clone}
  end

  def calculador(vehiculo)
    @calculadores[vehiculo.tipo]
  end
end
