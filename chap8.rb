names = ['ada', 'belle', 'chris']
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3]
puts

other_peeps = []
other_peeps[3] = 'beebee meaner'
other_peeps[0] = 'you'
other_peeps[1] = 'no'
other_peeps[0] = 'fun'
puts other_peeps


langueses = ['English', 'Norwegian', 'Ruby']

langueses.each do |lang|
    puts 'I love ' + lang + ' ! '
end

3.times do
    puts 'hey you bear'
end

foods = ['artichoke', 'broche', 'caramel', 'fun', 'socool']

puts foods
puts 
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + ' 8)'

200.times do
    puts []
end
puts foods

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittnes'
favorites.push 'last'
puts
puts favorites[0]
puts favorites.last
puts favorites.length
puts
puts favorites.pop
puts favorites
puts favorites.length