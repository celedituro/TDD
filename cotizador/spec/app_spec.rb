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

  it '03 - Ingreso auto, 2000 de cilindrada y 1000 km y obtengo 1 de ci y 500.0 de vm' do
    result = `ruby app.rb auto/2000/1000`
    expect(result.strip).to eq 'ci:2 & vm:1000.0'
  end

  xit '04 - Ingreso auto, 1000 de cilindrada y 2000 km y obtengo 1 de ci y 500.0 de vm' do
    result = `ruby app.rb auto/2000/2000`
    expect(result.strip).to eq 'ci:2 & vm:666.6'
  end

end
