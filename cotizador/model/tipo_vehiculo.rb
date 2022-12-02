class TipoVehiculo
  attr_reader :precio_base, :nombre
end

class Auto < TipoVehiculo
  def initialize
    @precio_base = 1000
    @nombre = 'auto'
  end
end

class Camioneta < TipoVehiculo
  def initialize
    @precio_base = 1500
    @nombre = 'camioneta'
  end
end
