require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"


@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "dishwasher"})

@items.each { |i| puts i.name }

cart = Cart.new('kolya')
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 150, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 170, :weight => 100, :name => "kettle"})

method = 'all_cars'
p cart.send(method)
