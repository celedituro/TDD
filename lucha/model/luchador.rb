class Luchador
  PUNTOS_HUMANO = 1
  PUNTOS_LOBO = 3
  PUNTOS_ARMA = 2
  PUNTOS_SIN_ARMA = 0
  def initialize(esta_armado)
    @esta_armado = esta_armado
  end

  def puntaje; end
end

class Humano < Luchador
  def puntaje
    if @esta_armado == true
      PUNTOS_HUMANO * PUNTOS_ARMA
    else
      PUNTOS_HUMANO + PUNTOS_SIN_ARMA
    end
  end
end

class Lobo < Luchador
  def puntaje
    if @esta_armado == true
      PUNTOS_LOBO * PUNTOS_ARMA
    else
      PUNTOS_LOBO + PUNTOS_SIN_ARMA
    end
  end
end
