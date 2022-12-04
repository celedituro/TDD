class CalculadorVMAuto
  def calcular(coef_impositivo, vehiculo)
    numerador = coef_impositivo * vehiculo.precio_base
    denominador = (1 + 0.001 * vehiculo.kilometraje).to_f
    numerador / denominador
  end
end

class CalculadorVMCamioneta
  def calcular(coef_impositivo, vehiculo)
    numerador = 3 * (coef_impositivo * vehiculo.precio_base)
    denominador = (vehiculo.kilometraje + vehiculo.cilindrada) * 0.003
    numerador / denominador
  end
end

class CalculadorVMCamion
  def calcular(coef_impositivo, vehiculo)
    numerador = coef_impositivo * vehiculo.precio_base
    denominador = (vehiculo.kilometraje + vehiculo.cilindrada) * 0.002
    numerador / denominador
  end
end
