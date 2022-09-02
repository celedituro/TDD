require 'spec_helper'

describe 'Lucha' do
  let(:lucha) { Lucha.new }

  it '01-Luchador 1 vs Luchador 2 => empate' do
    expect(lucha.obtener_resultado).to eq 'empate'
  end
end
