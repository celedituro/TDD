class Alquiler
  def initialize(fecha_alquiler, fecha_devolucion, cuit, param_alquiler)
    @fecha_alquiler = fecha_alquiler
    @fecha_devolucion = fecha_devolucion
    @cuit = cuit
    @param_alquiler = param_alquiler
  end

  def es_empresa
    @cuit[0] == '2' && @cuit[1] == '6'
  end

  def hay_recargo
    (@fecha_devolucion.to_i - (@fecha_alquiler.to_i + @param_alquiler)).positive?
  end

  def descuento
    if es_empresa
      0.05
    else
      0
    end
  end

  def importe_total
    importe_a = importe
    recargo * (importe_a - importe_a * descuento)
  end
end

class AlquilerHora < Alquiler
  def importe
    100 * @param_alquiler
  end

  def recargo
    1
  end
end

class AlquilerDia < Alquiler
  def importe
    2000 * @param_alquiler
  end

  def recargo
    if hay_recargo
      2
    else
      1
    end
  end
end

class AlquilerKm < Alquiler
  def importe
    100 + 10 * @param_alquiler
  end

  def recargo
    1
  end
end
