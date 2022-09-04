class Lucha
  EMPATE = 'empate'.freeze
  GANA_1 = 'gana 1'.freeze
  GANA_2 = 'gana 2'.freeze

  def initialize(escenario)
    @escenario = escenario
  end

  def empate(puntaje1, puntaje2)
    puntaje1 == puntaje2
  end

  def puntaje1_mayor(puntaje1, puntaje2)
    puntaje1 > puntaje2
  end

  def resultado(luchador1, luchador2)
    puntaje1 = luchador1.puntaje(@escenario)
    puntaje2 = luchador2.puntaje(@escenario)

    if empate(puntaje1, puntaje2)
      EMPATE
    elsif puntaje1_mayor(puntaje1, puntaje2)
      GANA_1
    else
      GANA_2
    end
  end
end
