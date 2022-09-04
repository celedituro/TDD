require 'spec_helper'

describe 'Luchador' do

  it '01-Humano-con-arma en estadio => puntaje = 3' do
    humano = Humano.new(true)
    expect(humano.puntaje('estadio')).to eq 3
  end

  it '02-Humano-sin-arma en estadio => puntaje = 2' do
    humano = Humano.new(false)
    expect(humano.puntaje('estadio')).to eq 2
  end

  it '03-Lobo-con-arma en estadio => puntaje = 9' do
    lobo = Lobo.new(true)
    expect(lobo.puntaje('estadio')).to eq 9
  end

  it '04-Lobo-sin-arma en estadio => puntaje = 6' do
    lobo = Lobo.new(false)
    expect(lobo.puntaje('estadio')).to eq 6
  end

  it '05-Humano-con-arma en ciudad => puntaje = 4' do
    humano = Humano.new(true)
    expect(humano.puntaje('ciudad')).to eq 4
  end

  it '06-Humano-sin-arma en ciudad => puntaje = 3' do
    humano = Humano.new(false)
    expect(humano.puntaje('ciudad')).to eq 3
  end

  it '07-Lobo-con-arma en ciudad => puntaje = 9' do
    lobo = Lobo.new(true)
    expect(lobo.puntaje('ciudad')).to eq 9
  end

  it '08-Lobo-sin-arma en ciudad => puntaje = 6' do
    lobo = Lobo.new(false)
    expect(lobo.puntaje('ciudad')).to eq 6
  end

  it '09-Vampiro-con-cuchillo en lluvia => puntaje = 5' do
    vampiro = Vampiro.new(true)
    expect(vampiro.puntaje('lluvia')).to eq 5
  end

  it '10-Vampiro-sin-arma en ciudad => puntaje = 4' do
    vampiro = Vampiro.new(false)
    expect(vampiro.puntaje('ciudad')).to eq 4
  end

  it '11-Vampiro-con-espada en estadio => puntaje = 6' do
    vampiro = Vampiro.new(true)
    expect(vampiro.puntaje('estadio')).to eq 6
  end

  it '12-Vampiro-con-cuchillo en noche => puntaje = 8' do
    vampiro = Vampiro.new(true)
    expect(vampiro.puntaje('noche')).to eq 8
  end
end
