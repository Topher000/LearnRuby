numbers = [1,2,3,4,5]


total = 0

numbers.each { |n| total += n}

puts total



# inject

numbers = [1,2,3,4,5,6]


puts numbers.inject { |total, n| total + n}
puts numbers.inject(:p)
