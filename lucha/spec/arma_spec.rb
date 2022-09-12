require 'spec_helper'

describe 'Arma' do

  it '01-Humano-con-espada => puntaje = 2' do
    espada = Espada.new
    expect(espada.puntos_por_arma(1)).to eq 2
  end

  it '02-Humano-con-mano => puntaje = 1' do
    mano = Mano.new
    expect(mano.puntos_por_arma(1)).to eq 1
  end

  it '03-Lobo-con-espada=> puntaje = 6' do
    espada = Espada.new
    expect(espada.puntos_por_arma(3)).to eq 6
  end

  it '04-Lobo-con-mano => puntaje = 3' do
    mano = Mano.new
    expect(mano.puntos_por_arma(3)).to eq 3
  end

  it '05-Vampiro-con-espada=> puntaje = 4' do
    espada = Espada.new
    expect(espada.puntos_por_arma(2)).to eq 4
  end

  it '06-Vampiro-con-mano => puntaje = 2' do
    mano = Mano.new
    expect(mano.puntos_por_arma(2)).to eq 2
  end
end
