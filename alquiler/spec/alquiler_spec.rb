require 'spec_helper'

describe 'Alquiler' do

  it 'se alquila 3 horas y el importe es 300' do
    alquiler = Alquiler.new(20190119, 20190119, 20112223336, 'h', 3)
    expect(alquiler.importe).to eq 300
  end

end