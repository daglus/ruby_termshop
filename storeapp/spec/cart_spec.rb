require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/antique_item'
require_relative '../app/item_container'
require_relative '../app/cart'

describe Cart do

  describe 'managing items' do
    it 'add items into to cart' do
      cart = Cart.new('kolya')
      item1 = Item.new('kettle', price: 200)
      item2 = Item.new('car', price: 200)
      cart.add_items(item1, item2)
      cart.items.should include(item1, item2)
    end

    it 'removes items  form itself'
  end

  it 'count items in itself'
  it 'places order using all the items that where added into the cart'
  it 'clear itself of the items after an order is placed'
end
