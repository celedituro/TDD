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

class Humano < Luchador
  def initialize(esta_armado)
    @esta_armado = esta_armado
  end

  def puntaje
    if @esta_armado == true
      2
    else
      1
    end
  end
end

class Lobo < Luchador
  def initialize(esta_armado)
    @esta_armado = esta_armado
  end

  def puntaje
    if @esta_armado == true
      3 * 2
    else
      3
    end
  end
end
