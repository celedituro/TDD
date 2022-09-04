class ControladorDeEntrada
  HUMANO = 'humano'.freeze
  LOBO = 'lobo'.freeze

  MANO = 'mano'.freeze
  ESPADA = 'espada'.freeze

  ESTADIO = 'estadio'.freeze
  CIUDAD = 'ciudad'.freeze
  BOSQUE = 'bosque'.freeze
  LLUVIA = 'lluvia'.freeze
  NOCHE = 'noche'.freeze

  def crear_arma(arma)
    if arma == MANO
      Mano.new
    elsif arma == ESPADA
      Espada.new
    else
      Cuchillo.new
    end
  end

  def crear_luchador(arma, tipo_luchador)
    if tipo_luchador == HUMANO
      Humano.new(crear_arma(arma))
    elsif tipo_luchador == LOBO
      Lobo.new(crear_arma(arma))
    else
      Vampiro.new(crear_arma(arma))
    end
  end

  def luchadores(lista_luchadores)
    luchadores = []
    lista_luchadores.each do |luchador|
      tipo = luchador[0]
      arma = luchador[1]
      luchadores.push(crear_luchador(arma, tipo))
    end
    luchadores
  end

  def escenario(escenario)
    if escenario == ESTADIO
      Estadio.new
    elsif escenario == CIUDAD
      Ciudad.new
    elsif escenario == BOSQUE
      Bosque.new
    elsif escenario == LLUVIA
      Lluvia.new
    elsif escenario == NOCHE
      Noche.new
    else
      'error: escenario desconocido'
    end
  end
end
