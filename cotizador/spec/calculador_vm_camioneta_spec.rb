require 'spec_helper'

describe 'Calculador del valor de mercado de camioneta' do
  let(:calculador_vm) { CalculadorVMCamioneta.new }

  it 'recibe 1 de ci, 1000 de km y 1000 de cilindrada y devuelve 750.0' do
    expect(calculador_vm.calcular(1, Camioneta.new(1000, 1000))).to eq 750.0
  end

  it 'recibe 2 de ci, 1000 de km y 1600 de cilindrada y devuelve 1153.8' do
    expect(calculador_vm.calcular(2, Camioneta.new(1600, 1000))).to eq 1153.8
  end

  it 'recibe 3 de ci, 1000 de km y 2000 de cilindrada y devuelve 1500.0' do
    expect(calculador_vm.calcular(3, Camioneta.new(2000, 1000))).to eq 1500.0
  end

  it 'recibe 7 de ci, 4700 de km y 1000 de cilindrada y devuelve 263.1' do
    expect(calculador_vm.calcular(1, Camioneta.new(1000, 4700))).to eq 263.1
  end
end
