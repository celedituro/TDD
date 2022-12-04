require 'spec_helper'

describe 'Presentador de resultado' do

  it 'recibe cotizador con auto, 1000, 1000 y devuelve ci:1 & vm:500.0' do
    presentador = PresentadorDeResultado.new
    controlador = ControladorDeEntrada.new("auto/1000/1000")
    cotizador = Cotizador.new(controlador)
    expect(presentador.presentar_resultado(cotizador)).to eq "ci:1 & vm:500.0"
  end

  it 'recibe TipoVehiculoInvalido y devuelve TipoVehiculoInvalido' do
    presentador = PresentadorDeResultado.new
    expect(presentador.presentar_error(TipoVehiculoInvalido)).to eq TipoVehiculoInvalido
  end

end
