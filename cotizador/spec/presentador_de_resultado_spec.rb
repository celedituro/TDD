require 'spec_helper'

describe 'Presentador de resultado' do

  it 'recibe 1 de ci y 500.0 de vm y devuelve ci:1 & vm:500.0' do
    presentador = PresentadorDeResultado.new
    expect(presentador.presentar_resultado(1, 500.0)).to eq "ci:1 & vm:500.0"
  end

  it 'recibe TipoVehiculoInvalido y devuelve TipoVehiculoInvalido' do
    presentador = PresentadorDeResultado.new
    expect(presentador.presentar_error(TipoVehiculoInvalido)).to eq TipoVehiculoInvalido
  end

end
