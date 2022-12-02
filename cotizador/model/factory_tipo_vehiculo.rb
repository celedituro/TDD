require_relative './errors/tipo_vehiculo_invalido'

class FactoryTipoVehiculo
  def initialize
    @tipos = {'auto' => Auto.new.clone,
              'camioneta' => Camioneta.new.clone,
              'camion' => Camion.new.clone}
  end

  def crear_vehiculo(un_tipo)
    raise TipoVehiculoInvalido unless @tipos.key?(un_tipo)

    @tipos[un_tipo]
  end
end
