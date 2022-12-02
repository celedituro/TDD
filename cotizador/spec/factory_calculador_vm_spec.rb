require 'spec_helper'

describe 'Factory calculador de valor de mercado' do

  it 'recibe un auto y devuelve una instancia de CalculadorVmAuto' do
    factory = FactoryCalculadorVM.new
    expect(factory.calculador(Auto.new).class).to eq CalculadorVMAuto
  end

  it 'recibe una camioneta y devuelve una instancia de CalculadorVmCamioneta' do
    factory = FactoryCalculadorVM.new
    expect(factory.calculador(Camioneta.new).class).to eq CalculadorVMCamioneta
  end

  it 'recibe un camion y devuelve una instancia de CalculadorVmCamion' do
    factory = FactoryCalculadorVM.new
    expect(factory.calculador(Camion.new).class).to eq CalculadorVMCamion
  end
end
