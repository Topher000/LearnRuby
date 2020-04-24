class Integer
    def to_eng
        if self == 5
            english = 'five'
        else
            english = 'forty-two'
        end
        
        english
    end
end

# call the class 
puts 5.to_eng
puts 42.to_eng

# class pract
# facorial class
class Integer
    def factorial
        if self < 0
            return 'You can\'t take the factorial of a negative number!'
        end
        if self <= 1
            1
        else
            self * (self-1).factorial
        end
    end


    # added the roman method
    def old_roman_numeral
        num = self 
        rom_num = ''
        rom_num = rom_num + 'M'*(num / 1000)
        rom_num = rom_num + 'D'*(num%1000 /500)
        rom_num = rom_num + 'C'*(num%500/ 100)
        rom_num = rom_num + 'L'*(num%100/50)
        rom_num = rom_num + 'X'*(num%50/10)
        rom_num = rom_num + 'V'*(num%10/5)
        rom_num = rom_num + 'I'*(num%5/1)
        rom_num
    end
end
# call the class 
puts 7.factorial
puts 89.old_roman_numeral

# shuffle class

class Array
    def shuf
        list = self
        shuffeld = []
        while list.length > 0 
            ran_num = rand(list.length)
            still_sort = []
            count = 0

            # Loop in list
            list.each do |start|
                if count == ran_num
                    shuffeld.push start
                else
                    still_sort.push start
                end
                count = count + 1
            end
            list = still_sort
        end
        shuffeld
    end

    
end
puts ['a','b','c','d','h','j','q','p'].shuf


# die example
class Die
    def roll
        1 + rand(6)
    end
end
# make dice
dice = [Die.new, Die.new]

# roll
dice.each do |die|
    puts die.roll
end