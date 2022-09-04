require 'spec_helper'

describe 'Escenario' do

  it '01-Humano en estadio => puntaje = 1' do
    estadio = Estadio.new()
    expect(estadio.puntos_por_escenario('humano', 1)).to eq 1
  end

  it '02-Vampiro en noche => puntaje = 4' do
    noche = Noche.new()
    expect(noche.puntos_por_escenario('vampiro', 2)).to eq 4
  end

  it '03-Vampiro en lluvia => puntaje = 1' do
    lluvia = Lluvia.new()
    expect(lluvia.puntos_por_escenario('vampiro', 2)).to eq 1
  end

  it '04-Lobo en bosque => puntaje = 9' do
    bosque = Bosque.new()
    expect(bosque.puntos_por_escenario('lobo', 3)).to eq 9
  end

  it '05-Humano en ciudad => puntaje = 2' do
    ciudad = Ciudad.new()
    expect(ciudad.puntos_por_escenario('humano', 1)).to eq 2
  end
end
