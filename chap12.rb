# hash practice
#keys are the state names
#values are the abv
states = {
    "Pennsylvania" => "PA",
    "New York" => "NY",
    "Oregon" => "OR"
}

puts states["Oregon"]

# Stringy Superpowers
da_man = 'Kristopher King'
big_K = da_man[8]
puts 

# Range
letters = 'a'..'c'

puts(['a','b','c'] == letters.to_a)

('A'..'Z').each do |letter|
    print letter
end
puts



# Playing with strings
puts "Hello, my name is Juilina and I am perceptive. What is your name?"
name = gets.chomp
puts "Hi, #{name}."

if name[0].downcase == 'k'
    puts 'you are super smart'
end

# more practice
prof = 'We tore the universe a new space-hole, alright!'
puts prof[12, 8]
puts prof[12..19] # 8 characters total 
puts
def is_avi? filename
    filename.downcase[-4..-1] == '.avi'
end
puts is_avi?('DANCEMONEY.AVI')
puts is_avi?('toilet_paper_fiaso.jpg')
puts
puts prof[-8..-1]
