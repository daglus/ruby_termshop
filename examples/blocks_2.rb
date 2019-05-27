10.times { puts 'Hello world!'}
puts ' ============= '
a = 10
a.times { puts 'Hello world!'}

james_bond = { :first_name => 'James',
               :midldle_name => 'Robert',
               :last_name => 'Bond' }

james_bond.each_key { |key| puts james_bond[key] }

File.open("./e20/blocks.txt", "w") { |f| f.puts "hello bond"}
