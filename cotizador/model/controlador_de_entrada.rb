class ControladorDeEntrada
  CANT_ARGS = 3
  INDICE_TIPO = 0
  INDICE_CILINDRADA = 1
  INDICE_KILOMETRAJE = 2

  attr_reader :cilindrada, :kilometraje, :tipo

  def initialize(args)
    @args = args.split('/', CANT_ARGS)
    @tipo = FactoryTipoVehiculo.new.tipo(parsear(INDICE_TIPO))
    @cilindrada = parsear(INDICE_CILINDRADA).to_i
    @kilometraje = parsear(INDICE_KILOMETRAJE).to_i
  end

  def parsear(idx)
    @args[idx].delete('/')
  end
end
