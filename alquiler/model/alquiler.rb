class Alquiler
  def initialize(fecha_alquiler, fecha_devolucion, cuit, tipo_alquiler, param_alquiler)
    @fecha_alquiler = fecha_alquiler
    @fecha_devolucion = fecha_devolucion
    @cuit = cuit
    @tipo_alquiler = tipo_alquiler
    @param_alquiler = param_alquiler
  end

  def es_empresa
    @cuit[0] == '2' && @cuit[1] == '6'
  end

  def importe_alquiler
    importe = if @tipo_alquiler == 'h'
                100 * @param_alquiler
              elsif @tipo_alquiler == 'd'
                2000 * @param_alquiler
              else
                100 + 10 * @param_alquiler
              end
    importe
  end

  def importe_total
    descuento = 0
    descuento = 0.05 if es_empresa == true
    importe_alquiler - importe_alquiler * descuento
  end
end
