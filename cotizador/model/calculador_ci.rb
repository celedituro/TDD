class CalculadorCI
  def calcular(cilindrada)
    ((1000 * cilindrada) / 1_000_000.to_f).to_f
  end
end
