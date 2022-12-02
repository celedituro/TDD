class FactoryCalculadorVM
  def initialize
    @calculadores = {'auto' => CalculadorVMAuto.new.clone,
                     'camioneta' => CalculadorVMCamioneta.new.clone,
                     'camion' => CalculadorVMCamion.new.clone}
  end

  def calculador(tipo)
    @calculadores[tipo.nombre]
  end
end