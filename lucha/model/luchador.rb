class Luchador
  def puntaje; end
end

class LuchadorConArma < Luchador
  def puntaje
    2
  end
end

class LuchadorSinArma < Luchador
  def puntaje
    0
  end
end
