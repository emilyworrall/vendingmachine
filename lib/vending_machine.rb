class VendingMachine

  VALID_COINS = [5, 10, 25]

  attr_reader :display, :coin_return, :products

  def initialize
    @display = 'INSERT COIN'
    @coins = []
    @coin_return = []
  end

  def insert(coin)
    if VALID_COINS.include?(coin)
      @coins << coin
      @display = @coins.inject(:+)
    else
      @coin_return << coin
      @display
    end
  end
end
