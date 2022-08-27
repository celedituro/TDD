class Alquiler
  def initialize(fecha_alquiler, fecha_devolucion, cuit, param_alquiler)
    @fecha_alquiler = fecha_alquiler
    @fecha_devolucion = fecha_devolucion
    @cuit = cuit
    @param_alquiler = param_alquiler
  end
end

class AlquilerHora < Alquiler
  def importe
    100 * @param_alquiler
  end
end

class AlquilerDia < Alquiler
  def importe
    2000 * @param_alquiler
  end
end

class AlquilerKm < Alquiler
  def importe
    100 + 10 * @param_alquiler
  end
end
