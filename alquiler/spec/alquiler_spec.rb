require 'spec_helper'

describe 'Alquiler' do

  it 'se alquila 3 horas y el importe es 300' do
    alquiler = AlquilerHora.new(20190119, 20190119, 20112223336, 3)
    expect(alquiler.importe).to eq 300
  end

  it 'se alquila 3 dias y el importe es 6000' do
    alquiler = AlquilerDia.new(20190119, 20190119, 20112223336, 3)
    expect(alquiler.importe).to eq 6000
  end

  it 'se alquila por 1000 km y el importe es 10100' do
    alquiler = AlquilerKm.new(20190119, 20190119, 20112223336, 1000)
    expect(alquiler.importe).to eq 10100
  end

end