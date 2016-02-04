require 'product'

describe 'Product' do

  let(:product) { Product.new 'chips', 50 }

  it 'has a price' do
    expect(product.price).to eq(50)
  end
end
