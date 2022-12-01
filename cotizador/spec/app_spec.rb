require 'spec_helper'

describe 'App' do

  it '01 - Ingreso auto, cilindrada de 1000 y 10 km y obtengo 1 de ci y 500.0 de vm' do
    result = `ruby app.rb auto/1000/1000`
    expect(result.strip).to eq 'ci:1 & vm:500.0'
  end

end
