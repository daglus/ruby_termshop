require_relative 'store_application'

StoreApplication.config do |app|
  app.name = 'My store'
  app.environment = :production

  app.admin do |admin|
    admin.email = 'mail@mail.com'
    admin.login = 'admin'
    admin.send_info_emails_on :mondays
  end
end

unless StoreApplication.frozen?
  StoreApplication.name = 'My name'
end
StoreApplication::Admin.email = 'new@email.com'
p StoreApplication::Admin.email

@items = []
@items << AntiqueItem.new('car', price: 101, weight: 100)
@items << RealItem.new({:price => 101, :weight => 100, :name => 'kettle'})
@items << RealItem.new({:price => 101, :weight => 100, :name => 'dishwasher'})


cart = Cart.new('kolya')
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => 'car'})
cart.add_item RealItem.new({:price => 150, :weight => 100, :name => 'car'})
cart.add_item RealItem.new({:price => 170, :weight => 100, :name => 'kettle'})
