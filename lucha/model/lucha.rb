class Lucha
  EMPATE = 'empate'.freeze
  GANA_1 = 'gana 1'.freeze
  GANA_2 = 'gana 2'.freeze

  def empate(luchador1, luchador2, escenario)
    luchador1.puntaje(escenario) == luchador2.puntaje(escenario)
  end

  def puntaje_1_mayor(luchador1, luchador2, escenario)
    luchador1.puntaje(escenario) > luchador2.puntaje(escenario)
  end

  def resultado(luchador1, luchador2, escenario)
    if empate(luchador1, luchador2, escenario)
      EMPATE
    elsif puntaje_1_mayor(luchador1, luchador2, escenario)
      GANA_1
    else
      GANA_2
    end
  end
end
