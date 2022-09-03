require 'spec_helper'

describe 'Luchador' do

  it '01-Humano-con-arma => puntaje = 2' do
    humano = Humano.new(true)
    expect(humano.puntaje('estadio')).to eq 2
  end

  it '02-Humano-sin-arma => puntaje = 1' do
    humano = Humano.new(false)
    expect(humano.puntaje('estadio')).to eq 1
  end

  it '03-Lobo-con-arma => puntaje = 6' do
    lobo = Lobo.new(true)
    expect(lobo.puntaje('estadio')).to eq 6
  end

  it '04-Lobo-sin-arma => puntaje = 6' do
    lobo = Lobo.new(false)
    expect(lobo.puntaje('estadio')).to eq 6
  end

  it '05-Humano-sin-arma en ciudad => puntaje = 3' do
    humano = Humano.new(false)
    expect(humano.puntaje('ciudad')).to eq 3
  end
end
