require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/item_container'

class ItemBox
  include ItemContainer

  def initialize
    @items = []
  end

end

describe ItemContainer do
  before(:each) do
    @box = ItemBox.new
    @item1 = Item.new('kettle', price: 200)
    @item2 = Item.new('kettle', price: 300)
  end

  # it 'show minimum price for the item' do
  #   IteBox.min_price.should be(100)
  # end

  it 'adds items into container' do
    @box.add_item(@item1)
    @box.add_item(@item2)
    expect(@box.items.size).to eq(2)
  end

  it 'removes item from the box' do
    @box.add_item(@item1)
    @box.add_item(@item2)
    @box.remove_item.should be(@item2)
    @box.remove_item
    @box.items.should be_empty
  end

  it 'raise error if trying adds some object instead item object' do
    lambda { @box.add_item('Something else') }.should raise_error
  end
end
