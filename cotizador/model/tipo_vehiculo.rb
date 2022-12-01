class TipoVehiculo
  attr_reader :precio_base
end

class Auto < TipoVehiculo
  def initialize
    @precio_base = 1000
  end
end

class Camioneta < TipoVehiculo
  def initialize
    @precio_base = 1500
  end
end
