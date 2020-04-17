def english_number number 
    if number < 0 # No negative numbers
        return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
        return 'zero'
    end

    num_string = '' # This is the string we will return

    ones_place = ['one',  'two',  'three', 
                  'four', 'five', 'six', 
                  'seven','eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty',
                  'forty', 'fifty', 'sixty', 
                  'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen',
                 'fourteen', 'fifteen', 'sixteen', 
                'seventeen', 'eighteen', 'nineteen']

    # finds the trillions place
    left = number
    write = left/1000000000000
    left = left - write*1000000000000 # subtract off those hundreds

    if write > 0 
        #recursion
        trillion = english_number write
        num_string = num_string + trillion + ' trillion '
        if left > 0
            # so we don't write "two hundredtfifty"
            num_string = num_string + ' '
        end
    end

    # finds the billion
    write = left/1000000000
    left = left - write*1000000000 # subtract off those hundreds

    if write > 0 
        #recursion
        billion = english_number write
        num_string = num_string + billion + ' billion '
        if left > 0
            # so we don't write "two hundredtfifty"
            num_string = num_string + ' '
        end
    end

# finds the millions
    write = left/1000000
    left = left - write*1000000 # subtract off those hundreds

    if write > 0 
        #recursion
        millions = english_number write
        num_string = num_string + millions + ' million '
        if left > 0
            # so we don't write "two hundredtfifty"
            num_string = num_string + ' '
        end
    end

    # this finds the thousands place
   
    write = left/1000
    left = left - write*1000 # subtract off those hundreds

    if write > 0 
        #recursion
        thousands = english_number write
        num_string = num_string + thousands + ' thousand '
        if left > 0
            # so we don't write "two hundredtfifty"
            num_string = num_string + ' '
        end
    end

    # left is how much of the number we still have left to write
    #write is the part we are writing out
    write = left/100
    left = left - write*100 # subtract off those hundreds

    if write > 0 
        #recursion
        hundreds = english_number write
        num_string = num_string + hundreds + ' hundred'
        if left > 0
            # so we don't write "two hundredtfifty"
            num_string = num_string + ' '
        end
    end

    write = left/10 # how many tens left
    left = left - write*10 # subtract off those tens

    if write > 0 
        if ((write == 1) and (left > 0))
            # writes the teens place
            num_string = num_string + teenagers[left-1]
            # since we took care of the teen place we set left to 0
            left = 0
        else
            num_string = num_string + tens_place[write-1]
        end

        if left > 0 
            # adds a space
            num_string = num_string + '-'
        end
    end

    write = left # find the ones left to write
    left = 0 # subtracts off those ones

    if write > 0 
        num_string = num_string + ones_place[write-1]
    end
    num_string
end

puts('Enter a number you want converted into word form')
input = gets.chomp
puts english_number(input.to_i)
