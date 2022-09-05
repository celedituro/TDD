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

  def initialize(argumentos)
    @escenario = argumentos[0]
    @tipo_luchador1 = argumentos[1]
    @arma_luchador1 = argumentos[2]
    @tipo_luchador2 = argumentos[3]
    @arma_luchador2 = argumentos[4]
  end

  def crear_arma(arma)
    if arma == MANO
      Mano.new
    elsif arma == ESPADA
      Espada.new
    else
      Cuchillo.new
    end
  end

  def crear_luchador(tipo_luchador, arma)
    if tipo_luchador == HUMANO
      Humano.new(crear_arma(arma))
    elsif tipo_luchador == LOBO
      Lobo.new(crear_arma(arma))
    else
      Vampiro.new(crear_arma(arma))
    end
  end

  def crear_lucha
    if crear_escenario == 'error: escenario desconocido'
      'error: escenario desconocido'
    else
      luchador1 = crear_luchador(@tipo_luchador1, @arma_luchador1)
      luchador2 = crear_luchador(@tipo_luchador2, @arma_luchador2)
      Lucha.new(crear_escenario, luchador1, luchador2)
    end
  end

  def crear_escenario
    if @escenario == ESTADIO
      Estadio.new
    elsif @escenario == CIUDAD
      Ciudad.new
    elsif @escenario == BOSQUE
      Bosque.new
    elsif @escenario == LLUVIA
      Lluvia.new
    elsif @escenario == NOCHE
      Noche.new
    else
      'error: escenario desconocido'
    end
  end
end
