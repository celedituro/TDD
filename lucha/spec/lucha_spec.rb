require 'spec_helper'

describe 'Lucha' do
  it '01-Humano-con-arma vs Humano-con-arma en estadio => empate' do
    lucha = Lucha.new
    expect(lucha.resultado(Humano.new(true), Humano.new(true), 'estadio')).to eq 'empate'
  end

  it '02-Humano-con-arma vs Humano-sin-arma en estadio => gana 1' do
    lucha = Lucha.new
    expect(lucha.resultado(Humano.new(true), Humano.new(false), 'estadio')).to eq 'gana 1'
  end

  it '03-Humano-sin-arma vs Lobo-sin-arma en estadio  => gana 2' do
    lucha = Lucha.new
    expect(lucha.resultado(Humano.new(false), Lobo.new(false), 'estadio')).to eq 'gana 2'
  end

  it '04-Humano-sin-arma vs Lobo-sin-arma en ciudad => gana 2' do
    lucha = Lucha.new
    expect(lucha.resultado(Humano.new(false), Lobo.new(false), 'ciudad')).to eq 'gana 2'
  end

  it '05-Humano-con-arma vs Humano-con-arma en ciudad => empate' do
    lucha = Lucha.new
    expect(lucha.resultado(Humano.new(true), Humano.new(true), 'ciudad')).to eq 'empate'
  end

  it '06-Lobo-con-arma vs Humano-sin-arma en ciudad => gana 1' do
    lucha = Lucha.new
    expect(lucha.resultado(Lobo.new(true), Humano.new(false), 'ciudad')).to eq 'gana 1'
  end

  it '07-Vampiro-con-cuchillo vs Lobo-con-mano en lluvia => gana 2' do
    lucha = Lucha.new
    expect(lucha.resultado(Vampiro.new(true), Lobo.new(false), 'lluvia')).to eq 'gana 2'
  end

  it '08-Vampiro-con-cuchillo vs Vampiro-con-espada en ciudad => empate' do
    lucha = Lucha.new
    expect(lucha.resultado(Vampiro.new(true), Vampiro.new(true), 'ciudad')).to eq 'empate'
  end

  it '09-Vampiro-con-mano vs Humano-con-espada en estadio => empate' do
    lucha = Lucha.new
    expect(lucha.resultado(Vampiro.new(false), Humano.new(true), 'estadio')).to eq 'gana 1'
  end

  it '10-Vampiro-con-mano vs Lobo-con-espada en noche => empate' do
    lucha = Lucha.new
    expect(lucha.resultado(Vampiro.new(false), Lobo.new(true), 'noche')).to eq 'gana 2'
  end
end
