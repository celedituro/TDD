class Luchador
  def initialize(arma)
    @arma = arma
  end

  def puntaje(escenario)
    @arma.puntos_por_arma(@puntos) + escenario.puntos_por_escenario(@tipo, @puntos)
  end
end

class Humano < Luchador
  HUMANO = 'humano'.freeze
  PUNTOS_HUMANO = 1
  def initialize(arma)
    super
    @tipo = HUMANO
    @puntos = PUNTOS_HUMANO
  end
end

class Lobo < Luchador
  LOBO = 'lobo'.freeze
  PUNTOS_LOBO = 3
  def initialize(arma)
    super
    @tipo = LOBO
    @puntos = PUNTOS_LOBO
  end
end

class Vampiro < Luchador
  VAMPIRO = 'vampiro'.freeze
  PUNTOS_VAMPIRO = 2
  def initialize(arma)
    super
    @tipo = VAMPIRO
    @puntos = PUNTOS_VAMPIRO
  end
end
