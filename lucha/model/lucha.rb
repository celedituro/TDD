class Lucha
  def obtener_resultado(luchador1, luchador2)
    if luchador1.puntaje == luchador2.puntaje
      'empate'
    elsif luchador1.puntaje > luchador2.puntaje
      'gana 1'
    else
      'gana 2'
    end
  end
end
