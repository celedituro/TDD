require 'spec_helper'

describe 'Lucha' do
  it '01-Luchador-con-arma vs Luchador-con-arma => empate' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado(LuchadorConArma.new, LuchadorConArma.new)).to eq 'empate'
  end

  it '02-Luchador-con-arma vs Luchador-sin-arma => gana 1' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado(LuchadorConArma.new, LuchadorSinArma.new)).to eq 'gana 1'
  end
end
