require 'spec_helper'

describe 'Lucha' do
  it '01-Humano-con-espada vs Humano-con-espada en estadio => empate' do
    lucha = Lucha.new(Estadio.new, Humano.new(Espada.new), Humano.new(Espada.new))
    expect(lucha.resultado).to eq 'empate'
  end

  it '02-Humano-con-espada vs Humano-con-mano en estadio => gana 1' do
    lucha = Lucha.new(Estadio.new, Humano.new(Espada.new), Humano.new(Mano.new))
    expect(lucha.resultado).to eq 'gana 1'
  end

  it '03-Humano-con-mano vs Lobo-con-mano en estadio  => gana 2' do
    lucha = Lucha.new(Estadio.new, Humano.new(Mano.new), Lobo.new(Mano.new))
    expect(lucha.resultado).to eq 'gana 2'
  end

  it '04-Humano-con-mano vs Lobo-con-mano en ciudad => gana 2' do
    lucha = Lucha.new(Ciudad.new, Humano.new(Mano.new), Lobo.new(Mano.new))
    expect(lucha.resultado).to eq 'gana 2'
  end

  it '05-Humano-con-espada vs Humano-con-espada en ciudad => empate' do
    lucha = Lucha.new(Ciudad.new, Humano.new(Espada.new), Humano.new(Espada.new))
    expect(lucha.resultado).to eq 'empate'
  end

  it '06-Lobo-con-espada vs Humano-con-mano en ciudad => gana 1' do
    lucha = Lucha.new(Ciudad.new, Lobo.new(Espada.new), Humano.new(Mano.new))
    expect(lucha.resultado).to eq 'gana 1'
  end

  it '07-Vampiro-con-cuchillo vs Lobo-con-mano en lluvia => gana 2' do
    lucha = Lucha.new(Lluvia.new, Vampiro.new(Cuchillo.new), Lobo.new(Mano.new))
    expect(lucha.resultado).to eq 'gana 2'
  end

  it '08-Vampiro-con-cuchillo vs Vampiro-con-espada en ciudad => empate' do
    lucha = Lucha.new(Ciudad.new, Vampiro.new(Cuchillo.new), Vampiro.new(Espada.new))
    expect(lucha.resultado).to eq 'empate'
  end

  it '09-Vampiro-con-mano vs Humano-con-espada en estadio => empate' do
    lucha = Lucha.new(Estadio.new, Vampiro.new(Mano.new), Humano.new(Espada.new))
    expect(lucha.resultado).to eq 'gana 1'
  end

  it '10-Vampiro-con-mano vs Lobo-con-espada en noche => empate' do
    lucha = Lucha.new(Noche.new, Vampiro.new(Mano.new), Lobo.new(Espada.new))
    expect(lucha.resultado).to eq 'gana 2'
  end

  it '11-Humano-con-espada vs Lobo-con-cuchillo en bosque => empate' do
    lucha = Lucha.new(Bosque.new, Humano.new(Espada.new), Lobo.new(Cuchillo.new))
    expect(lucha.resultado).to eq 'gana 2'
  end
end
