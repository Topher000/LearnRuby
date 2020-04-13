# method to find roman number



def old_roman_numeral num 
    rom_num = ''
    # finds the number places for given number
    thou = (num / 1000)
    hun = ((num%1000)/100)
    ten = ((num%100)/10)
    one = (num%10)

    # converts number to roman 1000s place
    rom_num = rom_num + 'M'*(num / 1000)

    # converts number to  roman 100s place
    if hun == 9
        rom_num = rom_num + 'CM'
    elsif hun == 4
        rom_num = 'CD'
    else
    rom_num = rom_num + 'D'*(num%1000 /500)
    rom_num = rom_num + 'C'*(num%500/ 100)
    end

    # converts number to roman 10s place
    if ten == 9
        rom_num = rom_num + 'XC'
    elsif ten == 4
        rom_num = 'XL'
    else
    rom_num = rom_num + 'L'*(num%100/50)
    rom_num = rom_num + 'X'*(num%50/10)
    end

    # converts number to roman 1 place
    if one == 9
        rom_num = rom_num + 'IX'
    elsif one == 4
        rom_num = 'IV'
    else
    rom_num = rom_num + 'V'*(num%10/5)
    rom_num = rom_num + 'I'*(num%5/1)
    end
rom_num
end

puts 'Enter a number you would like to convert to Roman Numerals'
user = gets.chomp
puts old_roman_numeral(user.to_i)