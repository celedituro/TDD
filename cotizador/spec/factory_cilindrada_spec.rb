require 'spec_helper'

describe 'Factory cilindrada' do

  it 'recibe 1000 y devuelve 1000' do
    factory = FactoryCilindrada.new
    expect(factory.asignar_cilindrada(1000)).to eq 1000
  end

  it 'recibe 1600 y devuelve 1600' do
    factory = FactoryCilindrada.new
    expect(factory.asignar_cilindrada(1600)).to eq 1600
  end

  it 'recibe 2000 y devuelve 2000' do
    factory = FactoryCilindrada.new
    expect(factory.asignar_cilindrada(2000)).to eq 2000
  end

  it 'recibe 3000 y CilindradaInvalida' do
    expect{ FactoryCilindrada.new.asignar_cilindrada(1500) }.to raise_error(CilindradaInvalida)
  end

end
