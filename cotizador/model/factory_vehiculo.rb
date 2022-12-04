require_relative './errors/tipo_vehiculo_invalido'

class FactoryVehiculo
  def initialize(cilindrada, kilometraje)
    @cilindrada = cilindrada
    @kilometraje = kilometraje
    @tipos = {'auto' => Auto.new(@cilindrada, @kilometraje).clone,
              'camioneta' => Camioneta.new(@cilindrada, @kilometraje).clone,
              'camion' => Camion.new(@cilindrada, @kilometraje).clone}
  end

  def crear_vehiculo(tipo)
    raise TipoVehiculoInvalido unless @tipos.key?(tipo)

    @tipos[tipo]
  end
end
