require_relative './errors/tipo_vehiculo_invalido'
require_relative './errors/cilindrada_invalida'

class ControladorDeEntrada
  INDICE_TIPO = 0
  INDICE_CILINDRADA = 1
  INDICE_KILOMETRAJE = 2

  def initialize(args)
    @parseador = ParseadorCotizador.new(args)
  end

  def crear_vehiculo
    begin
      tipo = @parseador.parsear(INDICE_TIPO)
      cilindrada_parseada = @parseador.parsear(INDICE_CILINDRADA).to_i
      cilindrada = FactoryCilindrada.new.asignar_cilindrada(cilindrada_parseada)
      kilometraje = @parseador.parsear(INDICE_KILOMETRAJE).to_i
      vehiculo = FactoryVehiculo.new(cilindrada, kilometraje).crear_vehiculo(tipo)
    rescue StandardError => e
      raise e
    end
    vehiculo
  end
end
