class PresentadorDeResultado
  def initialize(coef_impositivo, valor_mercado)
    @valor_ci = coef_impositivo
    @valor_vm = valor_mercado
  end

  def resultado
    "ci:#{@valor_ci} & vm:#{@valor_vm}"
  end
end
