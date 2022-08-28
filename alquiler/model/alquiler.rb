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

  def hay_recargo
    (@fecha_devolucion.to_i - (@fecha_alquiler.to_i + @param_alquiler)).positive?
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

  def descuento
    descuento = if es_empresa == true
                  0.05
                else
                  0
                end
    descuento
  end

  def recargo
    recargo = if hay_recargo == true
                2
              else
                1
              end
    recargo
  end

  def importe_total
    importe_a = importe_alquiler
    if @tipo_alquiler == 'd'
      recargo * (importe_a - importe_a * descuento)
    else
      importe_a - importe_a * descuento
    end
  end
end
