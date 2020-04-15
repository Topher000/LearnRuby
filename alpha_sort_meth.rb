# Sorthing method for words from an array
def sort_meth alpha_sort # This "wraps" recursive_sort
    recursive_sort alpha_sort, []
end

def recursive_sort unsorted, sorted
    #My code
    if unsorted.length <= 0 
        return sorted
    end
    #sorting steps

    # create var for unsorted array [] and a var to pull the last to check
    last = unsorted.pop
    still_unsorted = []
    
    # loops throug unsorted array and applies the test
    unsorted.each do |test_string|
        if test_string.downcase < last.downcase
            still_unsorted.push last
            last = test_string
        else
            still_unsorted.push test_string
        end
    end
    # add to the sorted from what you found
    sorted.push last
    # repeat
    recursive_sort still_unsorted, sorted
end

# gets input from the user
letters = []
puts 'Enter as many words as you would like, when finished press enter'
while true
    word = gets.chomp
    if word == ''
        break
    end
    letters.push word
end
puts(sort_meth(letters))