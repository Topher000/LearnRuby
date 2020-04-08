puts('hello '.+ 'world')
puts((10.*9).+ 9)

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '.....tceles b hsup a magic spell?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'what is your full name?'
name = gets.chomp
puts 'did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

puts 'What is your frist name?'
firstname = gets.chomp
puts 'middle'
middlename = gets.chomp
puts 'last'
lastname = gets.chomp
puts 'Hello ' + firstname + ' ' + middlename + ' ' + lastname
countc = firstname.length + middlename.length + lastname.length
puts 'There are ' + countc.to_s + ' characters in your name'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

line_width = 50
puts (               'Old Mother hubbard'.center(line_width))
puts (               'Sat in her cuboard'.center(line_width))
puts (        'eating her curds adn whey'.center(line_width))
puts (         'when along came a spider'.center(line_width))
puts (          'who sat down deside her'.center(line_width))
puts ('and scared her poor shoe dog away'.center(line_width))

line_width = 40
str = '--> text <--'
puts (str.ljust( line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts (str.ljust(line_width/2) + str.rjust(line_width/2))

puts 'What do you want to ask your boss'
    equestion = gets.chomp
    puts 'WHADDAYA MEAN "' + equestion.upcase + '" YOU\'RE FRIED!'

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts (5-2).abs
puts (2-5).abs
puts (5-2)

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(999999999999999999999999999999999))
puts('The weatherman said there is a')
puts(rand(101).to_s + '% chance of rain, ')
puts('but you can nver trust weatherman.')

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100)) 

title = 'Table of Contents'.center(50)
chap_1 = 'Chapter 1:  Getting Started'.ljust(30) + 'page 1'.rjust(20)
chap_2 = 'Chapter 2:  Numbers'.ljust(30) + 'page 9'.rjust(20)
chap_3 = 'Chapter 3:  Letters'.ljust(30) + 'page 13'.rjust(20)
puts title
puts
puts chap_1
puts chap_2
puts chap_3