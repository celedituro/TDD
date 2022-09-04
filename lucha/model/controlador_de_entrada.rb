class ControladorDeEntrada
  HUMANO = 'humano'.freeze
  ESPADA = 'espada'.freeze

  def esta_armado(arma)
    arma == ESPADA
  end

  def crear_luchador(esta_armado, tipo_luchador)
    if tipo_luchador == HUMANO
      Humano.new(esta_armado)
    else
      Lobo.new(esta_armado)
    end
  end

  def luchadores(lista_luchadores)
    luchadores = []
    lista_luchadores.each do |luchador|
      tipo = luchador[0]
      arma = luchador[1]
      luchadores.push(crear_luchador(esta_armado(arma), tipo))
    end
    luchadores
  end
end
