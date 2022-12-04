require_relative './errors/tipo_vehiculo_invalido'
require_relative './errors/cilindrada_invalida'

class ControladorDeEntrada
  INDICE_TIPO = 0
  INDICE_CILINDRADA = 1
  INDICE_KILOMETRAJE = 2

  def initialize(args)
    @parseador = ParseadorCotizador.new(args)
  end

  def tipo
    begin
      tipo = FactoryTipoVehiculo.new.crear_vehiculo(@parseador.parsear(INDICE_TIPO))
    rescue TipoVehiculoInvalido => e
      raise e
    end
    tipo
  end

  def cilindrada
    begin
      cilindrada_parseada = @parseador.parsear(INDICE_CILINDRADA)
      cilindrada = FactoryCilindrada.new.asignar_cilindrada(cilindrada_parseada.to_i)
    rescue TipoVehiculoInvalido => e
      raise e
    end
    cilindrada
  end

  def kilometraje
    @parseador.parsear(INDICE_KILOMETRAJE).to_i
  end
end
