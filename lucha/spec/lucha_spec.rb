require 'spec_helper'

describe 'Lucha' do
  it '01-Humano-con-arma vs Humano-con-arma => empate' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado(Humano.new(true), Humano.new(true), 'estadio')).to eq 'empate'
  end

  it '02-Humano-con-arma vs Humano-sin-arma => gana 1' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado(Humano.new(true), Humano.new(false), 'estadio')).to eq 'gana 1'
  end

  it '03-Humano-sin-arma vs Lobo-sin-arma => gana 2' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado(Humano.new(false), Lobo.new(false), 'estadio')).to eq 'gana 2'
  end

  it '04-Humano-sin-arma vs Lobo-sin-arma en ciudad => gana 2' do
    lucha = Lucha.new
    expect(lucha.obtener_resultado(Humano.new(false), Lobo.new(false), 'ciudad')).to eq 'gana 2'
  end
end
