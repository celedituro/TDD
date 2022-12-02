require_relative './errors/tipo_vehiculo_invalido'

class ControladorDeEntrada
  CANT_ARGS = 3
  INDICE_TIPO = 0
  INDICE_CILINDRADA = 1
  INDICE_KILOMETRAJE = 2
  VEHICULOS = %w[auto camioneta camion].freeze

  attr_reader :cilindrada, :kilometraje, :tipo

  def initialize(args)
    @args = args.split('/', CANT_ARGS)
    begin
      @tipo = FactoryTipoVehiculo.new.crear_vehiculo(parsear(INDICE_TIPO))
    rescue TipoVehiculoInvalido => e
      raise e
    else
      @cilindrada = parsear(INDICE_CILINDRADA).to_i
      @kilometraje = parsear(INDICE_KILOMETRAJE).to_i
    end
  end

  def parsear(idx)
    @args[idx].delete('/')
  end
end
