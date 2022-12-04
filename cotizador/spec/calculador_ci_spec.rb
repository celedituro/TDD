require 'spec_helper'

describe 'Calculador del coeficiente impositivo' do
  let(:calculador_ci) { CalculadorCI.new }

  it 'recibe auto y 1000 de cilindrada y devuelve 1' do
    expect(calculador_ci.calcular(Auto.new(1000, 1000))).to eq 1
  end

  it 'recibe auto y 1600 de cilindrada y devuelve 1' do
    expect(calculador_ci.calcular(Auto.new(1600, 1000))).to eq 1
  end

  it 'recibe auto y 2000 de cilindrada y devuelve 2' do
    expect(calculador_ci.calcular(Auto.new(2000, 1000))).to eq 2
  end

  it 'recibe camioneta y 1000 de cilindrada y devuelve 1' do
    expect(calculador_ci.calcular(Camioneta.new(1000, 1000))).to eq 1
  end

  it 'recibe camioneta y 1600 de cilindrada y devuelve 2' do
    expect(calculador_ci.calcular(Camioneta.new(1600, 1000))).to eq 2
  end

  it 'recibe camioneta y 2000 de cilindrada y devuelve 3' do
    expect(calculador_ci.calcular(Camioneta.new(2000, 1000))).to eq 3
  end

  it 'recibe camion y 1000 de cilindrada y devuelve 2' do
    expect(calculador_ci.calcular(Camion.new(1000, 1000))).to eq 2
  end

  it 'recibe camion y 1600 de cilindrada y devuelve 3' do
    expect(calculador_ci.calcular(Camion.new(1600, 1000))).to eq 3
  end

  it 'recibe camion y 2000 de cilindrada y devuelve 4' do
    expect(calculador_ci.calcular(Camion.new(2000, 1000))).to eq 4
  end

end
