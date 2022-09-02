require 'spec_helper'

describe 'Lucha' do

  it '01-Luchador-con-arma vs Luchador-con-arma => empate' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado('espada', 'espada')).to eq 'empate'
  end

  it '02-Luchador-con-arma vs Luchador-sin-arma => puntaje-1 mayor que puntaje-2' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado('espada', 'mano')).to eq 'gana 1'
  end
end
