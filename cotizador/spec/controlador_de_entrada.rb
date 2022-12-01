require 'spec_helper'

describe 'Controlador de entrada' do

  it 'recibe 1000 de cilindrada y devuelve 1000' do
    controlador = ControladorDeEntrada.new('auto/1000/1000')
    expect(controlador.cilindrada).to eq 1000
  end

  it 'recibe 1000 de kilometraje y devuelve 1000' do
    controlador = ControladorDeEntrada.new('auto/1000/1000')
    expect(controlador.kilometraje).to eq 1000
  end

  it 'recibe 1600 de cilindrada y devuelve 1600' do
    controlador = ControladorDeEntrada.new('auto/1600/1000')
    expect(controlador.cilindrada).to eq 1600
  end

  it 'recibe 2000 de kilometraje y devuelve 2000' do
    controlador = ControladorDeEntrada.new('auto/1600/2000')
    expect(controlador.kilometraje).to eq 2000
  end

end
