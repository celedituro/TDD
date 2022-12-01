require 'spec_helper'

describe 'Calculador del coeficiente impositivo' do
  let(:calculador_ci) { CalculadorCI.new }

  it 'recibe 1000 de cilindrada y devuelve 1' do
    expect(calculador_ci.calcular(1000)).to eq 1
  end

  it 'recibe 1600 de cilindrada y devuelve 1.6' do
    expect(calculador_ci.calcular(1600)).to eq 1
  end

  it 'recibe 2000 de cilindrada y devuelve 2.0' do
    expect(calculador_ci.calcular(2000)).to eq 2
  end

end
