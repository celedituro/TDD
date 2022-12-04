require 'spec_helper'

describe 'Parseador cotizador' do

  it 'recibe auto/1000/1000 y devuelve auto como tipo' do
    parseador = ParseadorCotizador.new("auto/1000/1000")
    expect(parseador.parsear(0)).to eq "auto"
  end

  it 'recibe auto/1000/1000 y devuelve 1000 como cilindrada' do
    parseador = ParseadorCotizador.new("auto/1000/1000")
    expect(parseador.parsear(1)).to eq "1000"
  end

  it 'recibe auto/1000/1000 y devuelve 1000 como kilometraje' do
    parseador = ParseadorCotizador.new("auto/1000/1000")
    expect(parseador.parsear(2)).to eq "1000"
  end

  it 'recibe moto/3000/1000 y devuelve moto como tipo' do
    parseador = ParseadorCotizador.new("moto/3000/1000")
    expect(parseador.parsear(0)).to eq "moto"
  end

  it 'recibe moto/3000/1000 y devuelve 3000 como cilindrada' do
    parseador = ParseadorCotizador.new("moto/3000/1000")
    expect(parseador.parsear(1)).to eq "3000"
  end

end
