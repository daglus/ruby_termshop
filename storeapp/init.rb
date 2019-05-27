require_relative "store_application"

puts StoreApplication.new == StoreApplication.new
p StoreApplication.new

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
