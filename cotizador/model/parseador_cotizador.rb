class ParseadorCotizador
  CANT_ARGS = 3

  def initialize(args)
    @args = args.split('/', CANT_ARGS)
  end

  def parsear(idx)
    @args[idx].delete('/')
  end
end
