require 'vending_machine'

describe VendingMachine do
  it 'accepts a nickel and updates display' do
    subject.insert(5)
    expect(subject.display).to eq(5)
  end

  it 'displays INSERT COIN when no coins are inserted' do
    expect(subject.display).to eq('INSERT COIN')
  end
end
