class Order

  attr_reader :items
  include ItemContainer

  def initialize
    @items = []
  end

  def place
    thr = Thread.new do
      Pony.mail(
        to: StoreApplication::Admin.email,
        from: 'My store <mail@mail.com>',
        via: :smtp,
        via_options: {
          address: 'smtp.gmail.com',
          port: '587',
          user_name: 'mail@mail.com',
          password: 'pass',
          authentication: :plain,
          domain: 'mail.google.com'
        },
        subject: 'New order',
        body: 'Check your admin page'
      )
    end
    while (thr.alive?)
      puts '.'
      sleep(1)
    end
  end
end
