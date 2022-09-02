require 'spec_helper'

describe 'App' do

  it 'no se ingresan parametros' do
    resultado = `ruby app.rb`
    expect(resultado.strip).to eq 'Error: Faltan ingresar parametros'
  end

  it 'se ingresan menos parametros' do
    resultado = `ruby app.rb 20190119 20190119 20112223336`
    expect(resultado.strip).to eq 'Error: Faltan ingresar parametros'
  end

  it 'se ingresan todos los parametros' do
    resultado = `ruby app.rb 20190119 20190119 20112223336 h 3`
    expect(resultado.strip).to eq 'importe: 300'
  end

  it 'se ingresa tipo de taller invalido' do
    resultado = `ruby app.rb 20190119 20190119 20112223336 j 3`
    expect(resultado.strip).to eq 'Error tipo_alquiler: Ingresar h, d o k'
  end
end
