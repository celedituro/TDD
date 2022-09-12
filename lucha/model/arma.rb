class Arma
  def puntos_por_arma(puntos); end
end

class Mano < Arma
  PUNTOS_MANO = 0
  def initialize
    @puntos = PUNTOS_MANO
  end

  def puntos_por_arma(puntos)
    puntos
  end
end

class Espada < Arma
  PUNTOS_ESPADA = 2
  def initialize
    @puntos = PUNTOS_ESPADA
  end

  def puntos_por_arma(puntos)
    puntos * @puntos
  end
end

class Cuchillo < Arma
  PUNTOS_CUCHILLO = 2
  def initialize
    @puntos = PUNTOS_CUCHILLO
  end

  def puntos_por_arma(puntos)
    puntos + @puntos
  end
end
