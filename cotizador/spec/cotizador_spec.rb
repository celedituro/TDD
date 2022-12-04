require 'spec_helper'

describe 'Cotizador' do

  it 'recibe auto, 1000, 1000 y devuelve 1' do
    vehiculo = Auto.new(1000,1000)
    cotizador = Cotizador.new(vehiculo)
    expect(cotizador.calcular_ci).to eq 1
  end

  it 'recibe camioneta, 1000, 1000 y devuelve 2' do
    vehiculo = Camioneta.new(1000,1000)
    cotizador = Cotizador.new(vehiculo)
    expect(cotizador.calcular_ci).to eq 1
  end

  it 'recibe camion, 1000, 1000 y devuelve 2' do
    vehiculo = Camion.new(1000,1000)
    cotizador = Cotizador.new(vehiculo)
    expect(cotizador.calcular_ci).to eq 2
  end

  it 'recibe auto, 1000, 1000 y devuelve 500.0' do
    vehiculo = Auto.new(1000,1000)
    cotizador = Cotizador.new(vehiculo)
    expect(cotizador.calcular_vm).to eq 500.0
  end

  it 'recibe camioneta, 1000, 1000 y devuelve 750.0' do
    vehiculo = Camioneta.new(1000,1000)
    cotizador = Cotizador.new(vehiculo)
    expect(cotizador.calcular_vm).to eq 750.0
  end

  it 'recibe camion, 1000, 1000 y devuelve 1000.0' do
    vehiculo = Camion.new(1000,1000)
    cotizador = Cotizador.new(vehiculo)
    expect(cotizador.calcular_vm).to eq 1000.0
  end

end
