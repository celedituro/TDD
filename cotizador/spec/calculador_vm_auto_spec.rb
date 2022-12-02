require 'spec_helper'

describe 'Calculador del valor de mercado de auto' do
  let(:calculador_vm) { CalculadorVMAuto.new }

  it 'recibe 1 de ci, 1000 de km y 1000 de cilindrada y devuelve 500.0' do
    expect(calculador_vm.calcular(1, 1000, 1000)).to eq 500.0
  end

  it 'recibe 1 de ci, 1000 de km y 1600 de cilindrada y devuelve 500.0' do
    expect(calculador_vm.calcular(1, 1000, 1600)).to eq 500.0
  end

  it 'recibe 2 de ci, 1000 de km y 2000 de cilindrada y devuelve 1000.0' do
    expect(calculador_vm.calcular(2, 1000, 2000)).to eq 1000.0
  end

  it 'recibe 1 de ci, 4700 de km y 1000 de cilindrada y devuelve 175.4' do
    expect(calculador_vm.calcular(1, 4700, 1000)).to eq 175.4
  end

end
