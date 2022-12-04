require_relative './errors/cilindrada_invalida'

class FactoryCilindrada
  def initialize
    @cilindradas = {1000 => 1000,
                    1600 => 1600,
                    2000 => 2000}
  end

  def asignar_cilindrada(cilindrada)
    raise CilindradaInvalida unless @cilindradas.key?(cilindrada)

    @cilindradas[cilindrada]
  end
end
