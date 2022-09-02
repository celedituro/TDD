require 'spec_helper'

describe 'ControladorDeEntrada' do
  it '01-Se reciben 2 Humano-con-arma y se obtiene un vector con 2 Humano-con-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['humano', 'espada'], ['humano', 'espada']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '02-Se reciben 2 Humano-con-arma y Humano-sin-arma y se obtiene un vector con Humano-con-arma y Humano-sin-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['humano', 'espada'],['humano', 'mano']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '03-Se reciben Humano-sin-arma y Lobo-sin-arma y se obtiene un vector con Humano-sin-arma y Lobo-sin-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['humano', 'espada'], ['lobo', 'mano']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '04-Se reciben 2 Lobo-con-arma y se obtiene un vector con 2 Lobo-con-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores([['lobo', 'espada'], ['lobo', 'espada']])
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end
end
