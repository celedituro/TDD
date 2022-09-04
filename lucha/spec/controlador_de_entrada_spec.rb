require 'spec_helper'

describe 'ControladorDeEntrada' do

  it '01-Recibe 2 Humano-con-arma y obtiene una lista con 2 Humano-con-arma' do
    luchadores = ControladorDeEntrada.new.luchadores([['humano', 'espada'], ['humano', 'espada']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Humano, Humano]
  end

  it '02-Recibe Humano-con-arma y Humano-sin-arma y obtiene una lista con Humano-con-arma y Humano-sin-arma' do
    luchadores = ControladorDeEntrada.new.luchadores([['humano', 'espada'], ['humano', 'mano']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Humano, Humano]
  end

  it '03-Recibe Humano-sin-arma y Lobo-sin-arma y obtiene una lista con Humano-sin-arma y Lobo-sin-arma' do
    luchadores = ControladorDeEntrada.new.luchadores([['humano', 'espada'], ['lobo', 'mano']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Humano, Lobo]
  end

  it '04-Recibe 2 Lobo-con-arma y obtiene una lista con 2 Lobo-con-arma' do
    luchadores = ControladorDeEntrada.new.luchadores([['lobo', 'espada'], ['lobo', 'espada']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Lobo, Lobo]
  end

  it '05-Recibe Humano-con-arma y Lobo-sin-arma y obtiene una lista con Humano-con-arma y Lobo-sin-arma' do
    luchadores = ControladorDeEntrada.new.luchadores([['humano', 'espada'], ['lobo', 'mano']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Humano, Lobo]
  end

  it '06-Recibe 2 Vampiro-con-cuchillo y obtiene una lista con 2 Vampiro' do
    luchadores = ControladorDeEntrada.new.luchadores([['vampiro', 'cuchillo'], ['vampiro', 'cuchillo']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Vampiro, Vampiro]
  end

  it '07-Recibe Humano-con-espada y Vampiro-con-mano y obtiene una lista con Humano y Vampiro' do
    luchadores = ControladorDeEntrada.new.luchadores([['humano', 'espada'], ['vampiro', 'mano']])
    expect([luchadores[0].class, luchadores[1].class]).to eq [Humano, Vampiro]
  end

  it '08-Recibe Humano-con-espada y crea Humano' do
    luchador = ControladorDeEntrada.new.crear_luchador('espada', 'humano')
    expect(luchador.class).to eq Humano
  end

  it '09-Recibe Espada y crea Espada' do
    arma = ControladorDeEntrada.new.crear_arma('espada')
    expect(arma.class).to eq Espada
  end

  it '10-Recibe Lobo-con-mano y crea Lobo' do
    luchador = ControladorDeEntrada.new.crear_luchador('mano', 'lobo')
    expect(luchador.class).to eq Lobo
  end

  it '11-Recibe Mano y crea Mano' do
    arma = ControladorDeEntrada.new.crear_arma('mano')
    expect(arma.class).to eq Mano
  end

  it '12-Recibe Vampiro-con-cuchillo y crea Vampiro' do
    luchador = ControladorDeEntrada.new.crear_luchador('cuchillo', 'vampiro')
    expect(luchador.class).to eq Vampiro
  end

  it '13-Recibe Cuchillo y crea Cuchillo' do
    arma = ControladorDeEntrada.new.crear_arma('cuchillo')
    expect(arma.class).to eq Cuchillo
  end

  it '14-Recibe Estadio y crea Estadio' do
    escenario = ControladorDeEntrada.new.escenario('estadio')
    expect(escenario.class).to eq Estadio
  end

  it '15-Recibe Ciudad y crea Ciudad' do
    escenario = ControladorDeEntrada.new.escenario('ciudad')
    expect(escenario.class).to eq Ciudad
  end

  it '16-Recibe Bosque y crea Bosque' do
    escenario = ControladorDeEntrada.new.escenario('bosque')
    expect(escenario.class).to eq Bosque
  end

  it '17-Recibe Lluvia y crea Lluvia' do
    escenario = ControladorDeEntrada.new.escenario('lluvia')
    expect(escenario.class).to eq Lluvia
  end

  it '18-Recibe Noche y crea Noche' do
    escenario = ControladorDeEntrada.new.escenario('noche')
    expect(escenario.class).to eq Noche
  end

  it '19-Recibe Escenario Invalido y lanza error' do
    error = ControladorDeEntrada.new.escenario('ningun_lugar')
    expect(error).to eq 'error: escenario desconocido'
  end
end
