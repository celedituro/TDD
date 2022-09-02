require 'spec_helper'

describe 'Alquiler' do

  it 'se alquila 3 horas y el importe es 300' do
    alquiler = AlquilerHora.new("20190119", "20190119", "20112223336", 3)
    expect(alquiler.importe_total).to eq 300
  end

  it 'se alquila 3 dias y el importe es 6000' do
    alquiler = AlquilerDia.new("20190119", "20190119", "20112223336", 3)
    expect(alquiler.importe_total).to eq 6000
  end

  it 'se alquila por 1000 km y el importe es 10100' do
    alquiler = AlquilerKm.new("20190119", "20190119", "20112223336", 1000)
    expect(alquiler.importe_total).to eq 10100
  end

  it 'empresa alquila 3 horas y el importe es 285' do
    alquiler = AlquilerHora.new("20190119", "20190119", "26112223336", 3)
    expect(alquiler.importe_total).to eq 285
  end

  it 'empresa alquila 3 dias y el importe es 5700' do
    alquiler = AlquilerDia.new("20190119", "20190119", "26112223336", 3)
    expect(alquiler.importe_total).to eq 5700
  end

  it 'empresa alquila por 1000 km y el importe es 9595' do
    alquiler = AlquilerKm.new("20190119", "20190119", "26112223336", 1000)
    expect(alquiler.importe_total).to eq 9595
  end

  it 'se alquila 3 dias, se devuelve tarde y el importe es 12000' do
    alquiler = AlquilerDia.new("20190119", "20190125", "20112223336", 3)
    expect(alquiler.importe_total).to eq 12000
  end

  it 'se alquila 3 dias, se devuelve antes y el importe es 6000' do
    alquiler = AlquilerDia.new("20190119", "20190121", "20112223336", 3)
    expect(alquiler.importe_total).to eq 6000
  end

  it 'empresa alquila 3 dias, lo devuelve tarde y el importe es 550' do
    alquiler = AlquilerDia.new("20190119", "20190125", "26112223336", 3)
    expect(alquiler.importe_total).to eq 11400
  end

  it 'se alquila 3 dias, se devuelve antes y el importe es 5700' do
    alquiler = AlquilerDia.new("20190119", "20190121", "26112223336", 3)
    expect(alquiler.importe_total).to eq 5700
  end

end