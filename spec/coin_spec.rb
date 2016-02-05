require 'coin'

describe Coin do

  let(:coin) {Coin::NICKEL}

  it 'has a type' do
    expect(coin.type).to eq('NICKEL')
  end

  it 'has a value' do
    expect(coin.value).to eq(5)
  end
end
