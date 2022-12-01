class CalculadorVM
  def calcular(tipo, coef_impositivo, kilometraje)
    ((coef_impositivo * tipo.precio_base) / (1 + 0.001 * kilometraje).to_f).to_f.truncate(1)
  end
end
