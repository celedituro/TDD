require 'spec_helper'

describe 'Vehiculo' do

  it 'Auto recibe 1000 de cilindrada y -1000 de km y devuelve un error' do
  expect{ Auto.new(1000, -1000) }.to raise_error(KilometrajeInvalido)
  end

  it 'Camioneta recibe 1000 de cilindrada y -1000 de km y devuelve un error' do
    expect{ Camioneta.new(1000, -1000) }.to raise_error(KilometrajeInvalido)
  end

  it 'Camion recibe 1000 de cilindrada y -1000 de km y devuelve un error' do
    expect{ Camion.new(1000, -1000) }.to raise_error(KilometrajeInvalido)
  end

end
