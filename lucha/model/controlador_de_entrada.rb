class ControladorDeEntrada
  def obtener_luchadores(arma_luchador1, arma_luchador2)
    armas = []
    armas.push(arma_luchador1, arma_luchador2)

    luchadores = []
    armas.each do |arma|
      if arma == 'espada'
        luchadores.push(LuchadorConArma.new)
      else
        luchadores.push(LuchadorSinArma.new)
      end
    end
    luchadores
  end
end
