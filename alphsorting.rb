# alphabedical sorter
letters = []
puts 'Enter as many words as you would like, when finished press enter'
while true
    word = gets.chomp
    if word == ''
        break
    end
    letters.push word
end
puts 'Here are your works sorted in order'
puts letters.sort