class Lucha
  def obtener_resultado(luchador1, luchador2)
    if luchador1.puntaje == luchador2.puntaje
      'empate'
    else
      'gana 1'
    end
  end
end
