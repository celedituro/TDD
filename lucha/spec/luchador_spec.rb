require 'spec_helper'

describe 'Luchador' do

  it '01-Humano-con-espada en estadio => puntaje = 3' do
    humano = Humano.new(Espada.new)
    expect(humano.puntaje(Estadio.new)).to eq 3
  end

  it '02-Humano-con-mano en estadio => puntaje = 2' do
    humano = Humano.new(Mano.new)
    expect(humano.puntaje(Estadio.new)).to eq 2
  end

  it '03-Lobo-con-espada en estadio => puntaje = 9' do
    lobo = Lobo.new(Espada.new)
    expect(lobo.puntaje(Estadio.new)).to eq 9
  end

  it '04-Lobo-sin-arma en estadio => puntaje = 6' do
    lobo = Lobo.new(Mano.new)
    expect(lobo.puntaje(Estadio.new)).to eq 6
  end

  it '05-Humano-con-espada en ciudad => puntaje = 4' do
    humano = Humano.new(Espada.new)
    expect(humano.puntaje(Ciudad.new)).to eq 4
  end

  it '06-Humano-con-mano en ciudad => puntaje = 3' do
    humano = Humano.new(Mano.new)
    expect(humano.puntaje(Ciudad.new)).to eq 3
  end

  it '07-Lobo-con-espada en ciudad => puntaje = 9' do
    lobo = Lobo.new(Espada.new)
    expect(lobo.puntaje(Ciudad.new)).to eq 9
  end

  it '08-Lobo-con-mano en ciudad => puntaje = 6' do
    lobo = Lobo.new(Mano.new)
    expect(lobo.puntaje(Ciudad.new)).to eq 6
  end

  it '09-Vampiro-con-cuchillo en lluvia => puntaje = 5' do
    vampiro = Vampiro.new(Cuchillo.new)
    expect(vampiro.puntaje(Lluvia.new)).to eq 5
  end

  it '10-Vampiro-con-mano en ciudad => puntaje = 4' do
    vampiro = Vampiro.new(Mano.new)
    expect(vampiro.puntaje(Ciudad.new)).to eq 4
  end

  it '11-Vampiro-con-espada en estadio => puntaje = 6' do
    vampiro = Vampiro.new(Espada.new)
    expect(vampiro.puntaje(Estadio.new)).to eq 6
  end

  it '12-Vampiro-con-cuchillo en noche => puntaje = 8' do
    vampiro = Vampiro.new(Cuchillo.new)
    expect(vampiro.puntaje(Noche.new)).to eq 8
  end

  it '13-Lobo-con-cuchillo en estadio => puntaje = 8' do
    lobo = Lobo.new(Cuchillo.new)
    expect(lobo.puntaje(Estadio.new)).to eq 8
  end

  it '14-Lobo-con-cuchillo en bosque => puntaje = 14' do
    lobo = Lobo.new(Cuchillo.new)
    expect(lobo.puntaje(Bosque.new)).to eq 14
  end

  it '15-Lobo-con-mano en lluvia => puntaje = 6' do
    lobo = Lobo.new(Mano.new)
    expect(lobo.puntaje(Lluvia.new)).to eq 6
  end

  it '16-Humano-con-cuchillo en bosque => puntaje = 4' do
    humano = Humano.new(Cuchillo.new)
    expect(humano.puntaje(Bosque.new)).to eq 4
  end

  it '17-Humano-con-cuchillo en noche => puntaje = 4' do
    humano = Humano.new(Cuchillo.new)
    expect(humano.puntaje(Noche.new)).to eq 4
  end

end
