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
end
