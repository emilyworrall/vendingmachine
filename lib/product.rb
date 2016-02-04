class Product

  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  private

  attr_writer :name, :price

end
