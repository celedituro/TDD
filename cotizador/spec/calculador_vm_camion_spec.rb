require 'spec_helper'

describe 'Calculador del valor de mercado de camion' do
  let(:calculador_vm) { CalculadorVMCamion.new }

  it 'recibe 2 de ci, 1000 de km y 1000 de cilindrada y devuelve 1000.0' do
    expect(calculador_vm.calcular(2, Camion.new(1000, 1000))).to eq 1000.0
  end

  it 'recibe 3 de ci, 1000 de km y 1600 de cilindrada y devuelve 1153.8' do
    expect(calculador_vm.calcular(3, Camion.new(1600, 1000))).to eq 1153.8461538461538
  end

  it 'recibe 4 de ci, 1000 de km y 2000 de cilindrada y devuelve 1333.3' do
    expect(calculador_vm.calcular(4, Camion.new(2000, 1000))).to eq  1333.3333333333333
  end

  it 'recibe 7 de ci, 4700 de km y 1000 de cilindrada y devuelve 1578.9' do
    expect(calculador_vm.calcular(9, Camion.new(1000, 4700))).to eq 1578.9473684210525
  end
end
