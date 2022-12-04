require 'spec_helper'

describe 'Factory tipo de vehiculo' do

  it 'recibe un auto y devuelve una instancia de Auto' do
    factory = FactoryVehiculo.new(1000, 1000)
    expect(factory.crear_vehiculo("auto").class).to eq Auto
  end

  it 'recibe una camioneta y devuelve una instancia de Camioneta' do
    factory = FactoryVehiculo.new(1000, 1000)
    expect(factory.crear_vehiculo("camioneta").class).to eq Camioneta
  end

  it 'recibe una camion y devuelve una instancia de Camion' do
    factory = FactoryVehiculo.new(1000, 1000)
    expect(factory.crear_vehiculo("camion").class).to eq Camion
  end

  it 'recibe una moto y devuelve un error' do
    expect{ FactoryVehiculo.new(1000, 1000).crear_vehiculo("moto") }.to raise_error(TipoVehiculoInvalido)
  end

end
