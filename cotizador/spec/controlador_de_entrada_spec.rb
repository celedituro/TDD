require 'spec_helper'

describe 'Controlador de entrada' do

  it 'recibe auto, 1000 de cilindrada y 1000 de kilometraje y devuelve 1000 cilindrada' do
    controlador = ControladorDeEntrada.new('auto/1000/1000')
    expect(controlador.cilindrada).to eq 1000
  end

  it 'recibe auto, 1000 de cilindrada y 1000 de kilometraje y devuelve 1000 de kilometraje' do
    controlador = ControladorDeEntrada.new('auto/1000/1000')
    expect(controlador.kilometraje).to eq 1000
  end

  it 'recibe auto, 1000 de cilindrada y 1000 de kilometraje y devuelve una instancia de Auto' do
    controlador = ControladorDeEntrada.new('auto/1000/1000')
    expect(controlador.tipo.class).to eq Auto
  end

  it 'recibe auto, 1600 de cilindrada y 1000 de kilometraje y devuelve 1600 de cilindrada' do
    controlador = ControladorDeEntrada.new('auto/1600/1000')
    expect(controlador.cilindrada).to eq 1600
  end

  it 'recibe auto, 1600 de cilindrada y 2000 de kilometraje y devuelve 2000 de kilometraje' do
    controlador = ControladorDeEntrada.new('auto/1600/2000')
    expect(controlador.kilometraje).to eq 2000
  end

  it 'recibe camioneta, 1000 de cilindrada y 1000 de kilometraje y devuelve una instancia de Camioneta' do
    controlador = ControladorDeEntrada.new('camioneta/1000/1000')
    expect(controlador.tipo.class).to eq Camioneta
  end

end
