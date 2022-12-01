class CalculadorVM
  def calcular(coef_impositivo, kilometraje)
    ((coef_impositivo * 1000) / (1 + 0.001 * kilometraje).to_f).to_f.truncate(1)
  end
end
