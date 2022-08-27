class Alquiler
  def initialize(fecha_alquiler, fecha_devolucion, cuit, tipo_alquiler, param_alquiler)
    @fecha_alquiler = fecha_alquiler
    @fecha_devolucion = fecha_devolucion
    @cuit = cuit
    @tipo_alquiler = tipo_alquiler
    @param_alquiler = param_alquiler
  end

  def importe
    300
  end
end
