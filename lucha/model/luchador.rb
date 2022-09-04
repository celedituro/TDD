class Luchador
  PUNTOS_ARMA = 2
  PUNTOS_SIN_ARMA = 0
  CIUDAD = 'ciudad'.freeze
  LLUVIA = 'lluvia'.freeze
  NOCHE = 'noche'.freeze
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
  PUNTOS_HUMANO = 1
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
  PUNTOS_LOBO = 3
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_LOBO
  end
end

class Vampiro < Luchador
  PUNTOS_VAMPIRO = 2
  FACTOR_LLUVIA = -1
  FACTOR_NOCHE = 2
  def initialize(esta_armado)
    super
    @puntos = PUNTOS_VAMPIRO
  end

  def factor_escenario(escenario)
    if escenario == LLUVIA
      FACTOR_LLUVIA
    elsif escenario == NOCHE
      FACTOR_NOCHE
    else
      0
    end
  end

  def puntos_por_escenario(escenario)
    if escenario == NOCHE
      @puntos * factor_escenario(escenario)
    else
      @puntos + factor_escenario(escenario)
    end
  end

  def puntos_por_arma
    if @esta_armado
      @puntos + PUNTOS_ARMA
    else
      @puntos + PUNTOS_SIN_ARMA
    end
  end
end
