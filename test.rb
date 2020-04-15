num = [1, 45, 98, 32, 43, 49]

letters = ['a', 'b', 'c']

puts letters.max
puts num.max
puts num.sum
puts

def count_meth num
    max = num.max
    min = num.min
    sum = num.sum
    mean = sum/num.length
    puts 'Max number ' + max.to_s
    puts 'Minumum number ' + min.to_s
    puts 'Mean number ' + mean.to_s
end

count_meth num