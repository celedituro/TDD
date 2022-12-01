require 'spec_helper'

describe 'Presentador de resultado' do

  it 'recibe 1 de ci y 500.0 de vm y devuelve ci:1 & vm:500.0' do
    presentador = PresentadorResultado.new(1, 500.0)
    expect(presentador.resultado).to eq "ci:1 & vm:500.0"
  end

end
