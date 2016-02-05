require 'vending_machine'

describe VendingMachine do
  it 'displays INSERT COIN when no coins are inserted' do
    expect(subject.display).to eq('INSERT COIN')
  end

  context 'valid coins' do
    it 'accepts a nickel and updates display' do
      subject.insert(5)
      expect(subject.display).to eq(5)
    end

    it 'accepts a dime and updates display' do
      subject.insert(10)
      expect(subject.display).to eq(10)
    end

    it 'accepts a quarter and updates display' do
      subject.insert(25)
      expect(subject.display).to eq(25)
    end

    it 'accepts multiple coins and displays total' do
      subject.insert(5)
      subject.insert(10)
      expect(subject.display).to eq(15)
    end
  end

  context 'invalid coins' do
    it 'displays INSERT COIN when penny inserted' do
      subject.insert(1)
      expect(subject.display).to eq('INSERT COIN')
    end

    it 'does not accept a non-coin' do
      subject.insert('hello')
      expect(subject.display).to eq('INSERT COIN')
    end
  end

  context 'coin return' do
    it 'puts invalid coins into the coin return' do
      subject.insert(1)
      subject.insert(1)
      expect(subject.coin_return).to eq([1, 1])
    end
  end

  # context 'choosing a product' do
  #   it 'can release an item if enough money is paid' do
  #     subject.insert(25)
  #     subject.insert(25)
  #     expect(subject.button('chips')).to eq('chips')
  #     expect(subject.display).to eq('THANK YOU')
  #   end
  # end

end
