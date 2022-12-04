class Vehiculo
  attr_reader :precio_base, :tipo, :cilindrada, :kilometraje
end

class Auto < Vehiculo
  def initialize(cilindrada, kilometraje)
    @precio_base = 1000
    @tipo = 'auto'
    @cilindrada = cilindrada
    @kilometraje = kilometraje
  end
end

class Camioneta < Vehiculo
  def initialize(cilindrada, kilometraje)
    @precio_base = 1500
    @tipo = 'camioneta'
    @cilindrada = cilindrada
    @kilometraje = kilometraje
  end
end

class Camion < Vehiculo
  def initialize(cilindrada, kilometraje)
    @precio_base = 2000
    @tipo = 'camion'
    @cilindrada = cilindrada
    @kilometraje = kilometraje
  end
end
