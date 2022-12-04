class CalculadorCI
  def calcular(vehiculo)
    (vehiculo.precio_base * vehiculo.cilindrada) / 1_000_000
  end
end
