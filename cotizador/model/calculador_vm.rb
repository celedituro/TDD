class CalculadorVMAuto
  def initialize
    @tipo = Auto.new
  end

  def calcular(coef_impositivo, kilometraje, _cilindrada)
    numerador = coef_impositivo * @tipo.precio_base
    denominador = (1 + 0.001 * kilometraje).to_f
    division = numerador / denominador
    division.to_f.truncate(1)
  end
end

class CalculadorVMCamioneta
  def initialize
    @tipo = Camioneta.new
  end

  def calcular(coef_impositivo, kilometraje, cilindrada)
    numerador = 3 * (coef_impositivo * @tipo.precio_base)
    denominador = ((kilometraje + cilindrada) * 0.003)
    division = numerador / denominador
    division.to_f.truncate(1)
  end
end
