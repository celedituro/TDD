require_relative './errors/tipo_vehiculo_invalido'
require_relative './errors/cilindrada_invalida'

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
      @cilindrada = FactoryCilindrada.new.asginar_cilindrada(parsear(INDICE_CILINDRADA).to_i)
    rescue TipoVehiculoInvalido => e
      raise e
    rescue CilindradaInvalida => e
      raise e
    else
      @kilometraje = parsear(INDICE_KILOMETRAJE).to_i
    end
  end

  def parsear(idx)
    @args[idx].delete('/')
  end
end
