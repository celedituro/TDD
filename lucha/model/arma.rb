class Arma
  def puntos_por_arma(puntos); end
end

class Mano < Arma
  def initialize
    @puntos = 0
  end

  def puntos_por_arma(puntos)
    puntos
  end
end

class Espada < Arma
  def initialize
    @puntos = 2
  end

  def puntos_por_arma(puntos)
    puntos * @puntos
  end
end

class Cuchillo < Arma
  def initialize
    @puntos = 2
  end

  def puntos_por_arma(puntos)
    puntos + @puntos
  end
end
