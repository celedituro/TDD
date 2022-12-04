require 'spec_helper'

describe 'Controlador de entrada' do

  it 'recibe auto, 1000 de cilindrada y 1000 de kilometraje y devuelve 1000 cilindrada' do
    controlador = ControladorDeEntrada.new('auto/1000/1000')
    expect(controlador.crear_vehiculo.class).to eq Auto
  end

  it 'recibe camioneta, 1000 de cilindrada y 1000 de kilometraje y devuelve una instancia de Camioneta' do
    controlador = ControladorDeEntrada.new('camioneta/1000/1000')
    expect(controlador.crear_vehiculo.class).to eq Camioneta
  end

  it 'recibe camion, 1000 de cilindrada y 1000 de kilometraje y devuelve una instancia de Camion' do
    controlador = ControladorDeEntrada.new('camion/1000/1000')
    expect(controlador.crear_vehiculo.class).to eq Camion
  end

  it 'recibe moto, 1000 de cilindrada y 1000 de kilometraje y devuelve un error' do
    expect{ ControladorDeEntrada.new('moto/1000/1000').crear_vehiculo }.to raise_error(TipoVehiculoInvalido)
  end

  it 'recibe auto, 3000 de cilindrada y 1000 de kilometraje y devuelve un error' do
    expect{ ControladorDeEntrada.new('auto/3000/1000').crear_vehiculo }.to raise_error(CilindradaInvalida)
  end

end
