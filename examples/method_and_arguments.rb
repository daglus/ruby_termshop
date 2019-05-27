# def hello_world(first_name, family_name)
#   puts 'Hello world!'
#   puts 'My name is ' + first_name + ' ' + family_name
# end
#
# hello_world('Kolya', 'Blond')
# hello_world('Sergey', 'Cond')
# hello_world('James', 'Bond')

# def hello_world(first_name='James', family_name='Bond')
#   puts 'Hello world!'
#   puts 'My name is ' + first_name + ' ' + family_name
# end
#
# hello_world
# hello_world('Sergey', 'Cond')
# hello_world('James', 'Bond')

def hello_world(first_name='', family_name='')
  puts 'Hello world!'
  unless family_name == '' && first_name == ''
    puts 'My name is ' + first_name + ' ' + family_name
  end
end

hello_world
hello_world('Sergey', 'Cond')
hello_world('James', 'Bond')
