class PresentadorDeResultado
  def presentar_resultado(cotizador)
    "ci:#{cotizador.calcular_ci} & vm:#{cotizador.calcular_vm.to_f.truncate(1)}"
  end

  def presentar_error(error)
    error
  end
end
