class ControladorDeEntrada
  CANT_ARGS = 3
  INDICE_TIPO = 0
  INDICE_CILINDRADA = 1
  INDICE_KILOMETRAJE = 2

  attr_reader :cilindrada, :kilometraje, :tipo

  def initialize(args)
    args = args.split('/', CANT_ARGS)
    @tipo = FactoryTipoVehiculo.new.tipo(args[INDICE_TIPO].delete('/'))
    @cilindrada = args[INDICE_CILINDRADA].delete('/').to_i
    @kilometraje = args[INDICE_KILOMETRAJE].delete('/').to_i
  end
end
