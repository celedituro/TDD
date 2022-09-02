require 'spec_helper'

describe 'Luchador' do
  it '01-Luchador-sin-arma => puntaje = 0' do
    luchador = LuchadorSinArma.new
    expect(luchador.puntaje).to eq 0
  end

  it '02-Luchador-con-arma => puntaje = 2' do
    luchador = LuchadorConArma.new
    expect(luchador.puntaje).to eq 2
  end
end
