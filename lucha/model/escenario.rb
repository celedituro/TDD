class Escenario
  def puntos_por_escenario(tipo_luchador, puntos); end
end

class Estadio < Escenario
  def puntos_por_escenario(_tipo_luchador, puntos)
    puntos
  end
end

class Ciudad < Escenario
  HUMANO = 'humano'.freeze
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == HUMANO
      puntos * 2
    else
      puntos
    end
  end
end

class Bosque < Escenario
  LOBO = 'lobo'.freeze
  FACTOR_BOSQUE = 3
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == LOBO
      puntos * FACTOR_BOSQUE
    else
      puntos
    end
  end
end

class Noche < Escenario
  VAMPIRO = 'vampiro'.freeze
  FACTOR_NOCHE = 2
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == VAMPIRO
      puntos * FACTOR_NOCHE
    else
      puntos
    end
  end
end

class Lluvia < Escenario
  VAMPIRO = 'vampiro'.freeze
  FACTOR_LLUVIA = 1
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == VAMPIRO
      puntos - FACTOR_LLUVIA
    else
      puntos
    end
  end
end
