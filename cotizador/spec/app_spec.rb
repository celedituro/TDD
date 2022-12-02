require 'spec_helper'

describe 'App' do

  it '01 - Ingreso auto, 1000 de cilindrada y 1000 km y obtengo 1 de ci y 500.0 de vm' do
    result = `ruby app.rb auto/1000/1000`
    expect(result.strip).to eq 'ci:1 & vm:500.0'
  end

  it '02 - Ingreso auto, 1600 de cilindrada y 1000 km y obtengo 1 de ci y 500.0 de vm' do
    result = `ruby app.rb auto/1600/1000`
    expect(result.strip).to eq 'ci:1 & vm:500.0'
  end

  it '03 - Ingreso auto, 2000 de cilindrada y 1000 km y obtengo 2 de ci y 1000.0 de vm' do
    result = `ruby app.rb auto/2000/1000`
    expect(result.strip).to eq 'ci:2 & vm:1000.0'
  end

  it '04 - Ingreso auto, 2000 de cilindrada y 2000 km y obtengo 2 de ci y 666.6 de vm' do
    result = `ruby app.rb auto/2000/2000`
    expect(result.strip).to eq 'ci:2 & vm:666.6'
  end

  it '05 - Ingreso auto, 2000 de cilindrada y 4700 km y obtengo 2 de ci y 350.8 de vm' do
    result = `ruby app.rb auto/2000/4700`
    expect(result.strip).to eq 'ci:2 & vm:350.8'
  end

  it '06 - Ingreso camioneta, 1000 de cilindrada y 1000 km y obtengo 1 de ci y 1125.0 de vm' do
    result = `ruby app.rb camioneta/1000/1000`
    expect(result.strip).to eq 'ci:1 & vm:750.0'
  end

  it '07 - Ingreso camioneta, 1600 de cilindrada y 1000 km y obtengo 2 de ci y 1153.8 de vm' do
    result = `ruby app.rb camioneta/1600/1000`
    expect(result.strip).to eq 'ci:2 & vm:1153.8'
  end

  it '08 - Ingreso camioneta, 2000 de cilindrada y 1000 km y obtengo 3 de ci y 1125.0 de vm' do
    result = `ruby app.rb camioneta/2000/1000`
    expect(result.strip).to eq 'ci:3 & vm:1500.0'
  end

  xit '09 - Ingreso camion, 1000 de cilindrada y 1000 km y obtengo 2 de ci y 1000.0 de vm' do
    result = `ruby app.rb camion/1000/1000`
    expect(result.strip).to eq 'ci:2 & vm:1000.0'
  end

end
