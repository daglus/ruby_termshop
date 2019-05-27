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


@items = []
@items << AntiqueItem.new('car', price: 101, weight: 100)
@items << RealItem.new({:price => 101, :weight => 100, :name => 'kettle'})
@items << RealItem.new({:price => 101, :weight => 100, :name => 'dishwasher'})

order = Order.new
order.place
puts order.placed_at
puts order.placed_at.to_i
puts order.placed_at.utc

puts order.time_spent_on_sending_email

puts order.placed_at.strftime('%b %-d, %Y %H:%M:%S')
