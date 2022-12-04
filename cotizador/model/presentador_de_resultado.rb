class PresentadorDeResultado
  def presentar_resultado(valor_ci, valor_vm)
    "ci:#{valor_ci} & vm:#{valor_vm}"
  end

  def presentar_error(error)
    error
  end
end
