class Lucha
  EMPATE = 'empate'.freeze
  GANA_1 = 'gana 1'.freeze
  GANA_2 = 'gana 2'.freeze
  def obtener_resultado(luchador1, luchador2)
    if luchador1.puntaje == luchador2.puntaje
      EMPATE
    elsif luchador1.puntaje > luchador2.puntaje
      GANA_1
    else
      GANA_2
    end
  end
end
