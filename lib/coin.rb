class Coin

  attr_reader :type, :value

  def initialize(type, value)
    @type = type
    @value = value
  end

  private

  attr_writer :type, :value

  PENNY = new 'PENNY', 1
  NICKEL = new 'NICKEL', 5
  DIME = new 'DIME', 10
  QUARTER = new 'QUARTER', 25

end
