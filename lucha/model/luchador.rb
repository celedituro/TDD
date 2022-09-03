class Luchador
  PUNTOS_HUMANO = 1
  PUNTOS_LOBO = 3
  PUNTOS_ARMA = 2
  PUNTOS_SIN_ARMA = 0
  def initialize(esta_armado)
    @esta_armado = esta_armado
    @puntos = 0
  end
end

class Humano < Luchador
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_HUMANO
  end

  def puntos(escenario)
    if escenario == 'ciudad'
      @puntos + PUNTOS_SIN_ARMA + @puntos * 2
    else
      @puntos + PUNTOS_SIN_ARMA
    end
  end

  def puntaje(escenario)
    if @esta_armado
      @puntos * PUNTOS_ARMA
    else
      puntos(escenario)
    end
  end
end

class Lobo < Luchador
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_LOBO
  end

  def puntaje(_escenario)
    if @esta_armado
      @puntos * PUNTOS_ARMA
    else
      @puntos + PUNTOS_SIN_ARMA + @puntos
    end
  end
end
