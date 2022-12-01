class CalculadorVM
  def calcular(coef_imp, kilometraje)
    ((coef_imp * 1000) / (1 + 0.001 * kilometraje).to_f).to_f
  end
end
