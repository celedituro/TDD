class CalculadorCI
  def calcular(tipo, cilindrada)
    (tipo.precio_base * cilindrada) / 1_000_000
  end
end
