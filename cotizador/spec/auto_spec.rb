require 'spec_helper'

describe 'Auto' do

  it 'le consultan por su precio base y devuelve 1000' do
    auto = Auto.new
    expect(auto.precio_base).to eq 1000
  end

end
