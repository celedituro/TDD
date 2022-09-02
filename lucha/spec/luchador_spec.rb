require 'spec_helper'

describe 'Luchador' do
  it '01-Luchador-sin-arma => puntaje = 0' do
    luchador = LuchadorSinArma.new
    expect(luchador.puntaje).to eq 0
  end

  it '02-Luchador-con-arma => puntaje = 2' do
    luchador = LuchadorConArma.new
    expect(luchador.puntaje).to eq 2
  end

  it '03-Humano-con-arma => puntaje = 2' do
    humano = Humano.new(true)
    expect(humano.puntaje).to eq 2
  end

  it '04-Humano-sin-arma => puntaje = 1' do
    humano = Humano.new(false)
    expect(humano.puntaje).to eq 1
  end

  it '05-Lobo-con-arma => puntaje = 6' do
    lobo = Lobo.new(true)
    expect(lobo.puntaje).to eq 6
  end

  it '06-Lobo-sin-arma => puntaje = 3' do
    lobo = Lobo.new(false)
    expect(lobo.puntaje).to eq 3
  end
end
