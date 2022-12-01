require 'spec_helper'

describe 'Calculador del valor de mercado' do
  let(:calculador_vm) { CalculadorVM.new }

  it 'recibe auto, 1 de ci y 1000 de km y devuelve 500.0' do
    expect(calculador_vm.calcular(Auto.new, 1, 1000)).to eq 500.0
  end

  it 'recibe auto, 1 de ci y 1000 de km y devuelve 800.0' do
    expect(calculador_vm.calcular(Auto.new, 1, 1000)).to eq 500.0
  end

  it 'recibe auto, 2 de ci y 1000 de km y devuelve 1000.0' do
    expect(calculador_vm.calcular(Auto.new, 2, 1000)).to eq 1000.0
  end

  it 'recibe auto, 2 de ci y 1500 de km y devuelve 800.0' do
    expect(calculador_vm.calcular(Auto.new, 2, 1500)).to eq 800.0
  end

  it 'recibe auto, 2 de ci y 2000 de km y devuelve 666.6' do
    expect(calculador_vm.calcular(Auto.new, 2, 2000)).to eq 666.6
  end

  it 'recibe auto, 2 de ci y 4700 de km y devuelve 350.8' do
    expect(calculador_vm.calcular(Auto.new,  2, 4700)).to eq 350.8
  end

end
