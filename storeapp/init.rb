require_relative "store_application"

StoreApplication.config do |app|
  app.name = 'My store'
  app.environment = :production

  app.admin do |admin|
    admin.email = ENV['ADMIN_EMAIL']
    admin.login = ENV['ADMIN_LOGIN']
    admin.send_info_emails_on :mondays
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

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
# p cart.send(method)
