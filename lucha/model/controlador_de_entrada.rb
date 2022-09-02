class ControladorDeEntrada
  def crear_humano(arma)
    if arma == 'espada'
      Humano.new(true)
    else
      Humano.new(false)
    end
  end

  def crear_lobo(arma)
    if arma == 'espada'
      Lobo.new(true)
    else
      Lobo.new(false)
    end
  end

  def obtener_luchadores(lista_luchadores)
    luchadores = []
    lista_luchadores.each do |luchador|
      if luchador[0] == 'humano'
        luchadores.push(crear_humano(luchador[1]))
      else
        luchadores.push(crear_lobo(luchador[1]))
      end
    end
    luchadores
  end
end
