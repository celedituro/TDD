class Escenario
  def puntos_por_escenario(tipo_luchador, puntos); end
end

class Estadio < Escenario
  def puntos_por_escenario(_tipo_luchador, puntos)
    puntos
  end
end

class Ciudad < Escenario
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == 'humano'
      puntos * 2
    else
      puntos
    end
  end
end

class Bosque < Escenario
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == 'lobo'
      puntos * 3
    else
      puntos
    end
  end
end

class Noche < Escenario
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == 'vampiro'
      puntos * 2
    else
      puntos
    end
  end
end

class Lluvia < Escenario
  def puntos_por_escenario(tipo_luchador, puntos)
    if tipo_luchador == 'vampiro'
      puntos - 1
    else
      puntos
    end
  end
end
