require 'spec_helper'

describe 'ControladorDeEntrada' do

  it '01-Recibe Humano-con-espada y crea Humano' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    luchador = controlador.crear_luchador('humano', 'espada')
    expect(luchador.class).to eq Humano
  end

  it '02-Recibe Lobo-con-mano y crea Lobo' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    luchador = controlador.crear_luchador('lobo', 'mano')
    expect(luchador.class).to eq Lobo
  end

  it '03-Recibe Vampiro-con-cuchillo y crea Vampiro' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    luchador = controlador.crear_luchador('vampiro', 'cuchillo')
    expect(luchador.class).to eq Vampiro
  end

  it '04-Recibe Espada y crea Espada' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    arma = controlador.crear_arma('espada')
    expect(arma.class).to eq Espada
  end

  it '05-Recibe Mano y crea Mano' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    arma = controlador.crear_arma('mano')
    expect(arma.class).to eq Mano
  end

  it '06-Recibe Cuchillo y crea Cuchillo' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    arma = controlador.crear_arma('cuchillo')
    expect(arma.class).to eq Cuchillo
  end

  it '07-Recibe Estadio y crea Estadio' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    escenario = controlador.crear_escenario
    expect(escenario.class).to eq Estadio
  end

  it '08-Recibe Ciudad y crea Ciudad' do
    controlador = ControladorDeEntrada.new(['ciudad', 'humano', 'espada', 'lobo', 'mano'])
    escenario = controlador.crear_escenario
    expect(escenario.class).to eq Ciudad
  end

  it '09-Recibe Bosque y crea Bosque' do
    controlador = ControladorDeEntrada.new(['bosque', 'humano', 'espada', 'lobo', 'mano'])
    escenario = controlador.crear_escenario
    expect(escenario.class).to eq Bosque
  end

  it '10-Recibe Lluvia y crea Lluvia' do
    controlador = ControladorDeEntrada.new(['lluvia', 'humano', 'espada', 'lobo', 'mano'])
    escenario = controlador.crear_escenario
    expect(escenario.class).to eq Lluvia
  end

  it '11-Recibe Noche y crea Noche' do
    controlador = ControladorDeEntrada.new(['noche', 'humano', 'espada', 'lobo', 'mano'])
    escenario = controlador.crear_escenario
    expect(escenario.class).to eq Noche
  end

  it '12-Recibe Escenario Invalido y lanza error' do
    controlador = ControladorDeEntrada.new(['ningun_lugar', 'humano', 'espada', 'lobo', 'mano'])
    error = controlador.crear_escenario
    expect(error).to eq 'desconocido'
  end

  it '13-Crea lucha entre Humano-con-espada y Lobo-con-mano en estadio y devuelve Lucha' do
    controlador = ControladorDeEntrada.new(['estadio', 'humano', 'espada', 'lobo', 'mano'])
    expect(controlador.crear_lucha.class).to eq Lucha
  end

  it '14-Recibe Escenario Invalido y lanza error' do
    controlador = ControladorDeEntrada.new(['hola', 'humano', 'espada', 'lobo', 'mano'])
    expect(controlador.crear_escenario).to eq 'desconocido'
  end

  it '15-Recibe Escenario Invalido y lanza error' do
    controlador = ControladorDeEntrada.new(['ningun_lugar', 'humano', 'espada', 'lobo', 'mano'])
    expect(controlador.es_escenario_valido).to eq false
  end

  it '16-Recibe Escenario Invalido y lanza error' do
    controlador = ControladorDeEntrada.new(['lluvia', 'humano', 'espada', 'lobo', 'mano'])
    expect(controlador.es_escenario_valido).to eq true
  end

  it '17-Crea lucha entre Humano-con-espada y Lobo-con-mano en estadio y devuelve Lucha' do
    controlador = ControladorDeEntrada.new(['nada', 'humano', 'espada', 'lobo', 'mano'])
    expect(controlador.crear_lucha).to eq 'error: escenario desconocido'
  end
end
