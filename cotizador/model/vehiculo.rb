require_relative './errors/kilometraje_invalido'

class Vehiculo
  attr_reader :precio_base, :tipo, :cilindrada, :kilometraje

  def validar_km(kilometraje)
    raise KilometrajeInvalido if kilometraje.negative?
  end
end

class Auto < Vehiculo
  def initialize(cilindrada, kilometraje)
    @precio_base = 1000
    @tipo = 'auto'
    @cilindrada = cilindrada
    begin
      validar_km(kilometraje)
    rescue StandardError => e
      raise e
    else
      @kilometraje = kilometraje
    end
  end
end

class Camioneta < Vehiculo
  def initialize(cilindrada, kilometraje)
    @precio_base = 1500
    @tipo = 'camioneta'
    @cilindrada = cilindrada
    @kilometraje = kilometraje
    validar_km(kilometraje)
  end
end

class Camion < Vehiculo
  def initialize(cilindrada, kilometraje)
    @precio_base = 2000
    @tipo = 'camion'
    @cilindrada = cilindrada
    @kilometraje = kilometraje
    validar_km(kilometraje)
  end
end
