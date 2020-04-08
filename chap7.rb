puts 1 > 2
puts 1 < 2
puts
puts 5 >= 5
puts 5 <= 4
puts
puts 1 == 1
puts 2 != 1
puts

puts 'cat' < 'dog'
puts

puts 'bug lady' < 'Xander'
puts 'bug lady'.downcase < 'Xander'.downcase
puts

puts 'Hey, what\'s your name?'
name = gets.chomp
puts 'Hello ' + name + '.'
if name.capitalize == 'Topher'
    puts 'What a lovely name!'
end
puts

puts 'I am a fortune-teller. Tell me your name: '
name = gets.chomp

if name.capitalize == 'Topher'
    puts 'I see great things in your future.'
else
    puts 'Your future is...oh my! Look at the time!'
    puts 'I really have to go, sorry!'
end
puts

puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard. And your name is...?'
name = gets.chomp

if name == name.capitalize
    puts 'Please take a seat, ' + name + '.'
else
    puts name + '? You mean ' + name.capitalize + ', right?'
    puts 'Don\'t you even know how to spell your name??'
    reply = gets.chomp

    if reply.downcase == 'yes'
        puts 'Hmmph! Well, sit down!'
    else
        puts 'GET OUT!!'
    end
end
while true
    input = gets.chomp
    puts input
    if input == 'bye'
        break
    end
end
puts 'come back soon'


puts 'hey man, what\'s your name?'
name = gets.chomp
puts 'hey, ' + name + '.'

if name == 'Kristopher' || name == 'Topher'
    puts 'What a lovely name'
end

while true
    puts 'What would you like to ask C to do?'
    request = gets.chomp

    puts 'you say c, please ' + request

    puts 'cs response'
    puts 'c ' + request
    puts 'mom ' + request
    puts 'dad ' + request
    puts 'topher ' + request
    puts

    if request == 'stop'
        break
    end
end