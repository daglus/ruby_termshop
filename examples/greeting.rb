def hello_world(first_name='', family_name='')
  greeting = "Hello world!\n"
  if family_name != '' && first_name != ''
    greeting += 'My name is ' + first_name + ' ' + family_name
  end
  greeting
end

puts hello_world('Bond', 'Gramar')
