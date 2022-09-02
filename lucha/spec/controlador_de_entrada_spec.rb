require 'spec_helper'

describe 'ControladorDeEntrada' do
  it '01-Se reciben 2 Luchadores-con-arma y se obtiene un vector con 2 Luchadores-con-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores('espada', 'espada')
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end

  it '02-Se reciben Luchador-con-arma y Luchador-sin-arma y se obtiene un vector con Luchador-con-arma y Luchador-sin-arma' do
    luchadores = ControladorDeEntrada.new.obtener_luchadores('espada', 'mano')
    expect(luchadores).to eq [luchadores[0], luchadores[1]]
  end
end
