class PresentadorDeResultado
  def presentar_resultado(cotizador)
    "ci:#{cotizador.calcular_ci} & vm:#{cotizador.calcular_vm}"
  end

  def presentar_error(error)
    error
  end
end
