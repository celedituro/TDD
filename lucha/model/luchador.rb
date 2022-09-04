class Luchador
  PUNTOS_HUMANO = 1
  PUNTOS_LOBO = 3
  PUNTOS_VAMPIRO = 2
  PUNTOS_ARMA = 2
  PUNTOS_SIN_ARMA = 0
  CIUDAD = 'ciudad'.freeze
  def initialize(esta_armado)
    @esta_armado = esta_armado
    @puntos = 0
  end

  def puntos_por_arma
    if @esta_armado
      @puntos * PUNTOS_ARMA
    else
      @puntos + PUNTOS_SIN_ARMA
    end
  end

  def puntos_por_escenario(escenario)
    @puntos * factor_escenario(escenario)
  end

  def factor_escenario(_escenario)
    1
  end

  def puntaje(escenario)
    puntos_por_arma + puntos_por_escenario(escenario)
  end
end

class Humano < Luchador
  FACTOR_CIUDAD = 2
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_HUMANO
  end

  def factor_escenario(escenario)
    factor = 1
    factor = FACTOR_CIUDAD if escenario == CIUDAD
    factor
  end
end

class Lobo < Luchador
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_LOBO
  end
end

class Vampiro < Luchador
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_VAMPIRO
  end

  def factor_escenario(escenario)
    factor = 0
    factor = -1 if escenario == 'lluvia'
    factor
  end

  def puntos_por_escenario(escenario)
    @puntos + factor_escenario(escenario)
  end

  def puntos_por_arma
    if @esta_armado
      @puntos + PUNTOS_ARMA
    else
      @puntos + PUNTOS_SIN_ARMA
    end
  end
end
