require 'spec_helper'

describe 'CalculadorVM' do
  let(:calculador_vm) { CalculadorVM.new }

  it 'recibe 1 de ci y 1000 de km y devuelve 500.0' do
    expect(calculador_vm.calcular(1, 1000)).to eq 500.0
  end

  it 'recibe 1.6 de ci y 1000 de km y devuelve 800.0' do
    expect(calculador_vm.calcular(1.6, 1000)).to eq 800.0
  end

  it 'recibe 2.0 de ci y 1000 de km y devuelve 1000.0' do
    expect(calculador_vm.calcular(2.0, 1000)).to eq 1000.0
  end

  it 'recibe 2.0 de ci y 1500 de km y devuelve 800.0' do
    expect(calculador_vm.calcular(2.0, 1500)).to eq 800.0
  end
end
