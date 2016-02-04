class VendingMachine

  VALID_COINS = [5, 10, 25]

  attr_reader :display

  def initialize
    @display = 'INSERT COIN'
  end

  def insert(coin)
    if VALID_COINS.include?(coin)
      @display = coin
    else
      @display
    end
  end
end
