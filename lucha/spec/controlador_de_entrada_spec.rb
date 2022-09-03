require 'spec_helper'

describe 'ControladorDeEntrada' do
  it '01-Recibe 2 Humano-con-arma y obtiene una lista con 2 Humano-con-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['humano', 'espada'], ['humano', 'espada']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '02-Recibe Humano-con-arma y Humano-sin-arma y obtiene una lista con Humano-con-arma y Humano-sin-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['humano', 'espada'],['humano', 'mano']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '03-Recibe Humano-sin-arma y Lobo-sin-arma y obtiene una lista con Humano-sin-arma y Lobo-sin-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['humano', 'espada'], ['lobo', 'mano']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '04-Reciben 2 Lobo-con-arma y obtiene una lista con 2 Lobo-con-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['lobo', 'espada'], ['lobo', 'espada']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end
end
