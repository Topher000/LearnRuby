var1 = 2
var2 = '5'
puts var1.to_s + var2
puts ''

var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i
puts ''

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'who asked you about 5 or whatever?'.to_i
puts 'Your mamma did.'.to_f
puts ''
puts 'stingy'.to_s
puts 3.to_i
puts ''

puts 20
puts 20.to_s
puts '20'
puts ''

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? what a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

puts 'What is your frist name?'
firstname = gets.chomp
puts 'middle'
middlename = gets.chomp
puts 'last'
lastname = gets.chomp
puts 'Hello ' + firstname + ' ' + middlename + ' ' + lastname


puts 'What is your favorit number?'
favnum = gets.chomp
favenumber = favnum.to_i + 1
puts 'Your favorit number should be ' + favenumber.to_s + ' because it is bigger and better!'

my_birth_month = 'August'
birth_day = 3
puts my_birth_month + ' ' + birth_day.to_s