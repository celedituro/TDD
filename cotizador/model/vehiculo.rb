require_relative './errors/kilometraje_invalido'

class Vehiculo
  attr_reader :precio_base, :tipo, :cilindrada, :kilometraje

  def validar_km(kilometraje)
    raise KilometrajeInvalido if kilometraje.negative?
  end
end

class Auto < Vehiculo
  PRECIO_BASE_AUTO = 1000
  TIPO_AUTO = 'auto'.freeze
  def initialize(cilindrada, kilometraje)
    @precio_base = PRECIO_BASE_AUTO
    @tipo = TIPO_AUTO
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
  PRECIO_BASE_CAMIONETA = 1500
  TIPO_CAMIONETA = 'camioneta'.freeze
  def initialize(cilindrada, kilometraje)
    @precio_base = PRECIO_BASE_CAMIONETA
    @tipo = TIPO_CAMIONETA
    @cilindrada = cilindrada
    @kilometraje = kilometraje
    validar_km(kilometraje)
  end
end

class Camion < Vehiculo
  PRECIO_BASE_CAMION = 2000
  TIPO_CAMION = 'camion'.freeze
  def initialize(cilindrada, kilometraje)
    @precio_base = PRECIO_BASE_CAMION
    @tipo = TIPO_CAMION
    @cilindrada = cilindrada
    @kilometraje = kilometraje
    validar_km(kilometraje)
  end
end
