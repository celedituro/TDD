class FactoryTipoVehiculo
  def initialize
    @tipos = {'auto' => Auto.new.clone, 'camioneta' => Camioneta.new.clone}
  end

  def tipo(un_tipo)
    @tipos[un_tipo]
  end
end
