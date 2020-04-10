# method to find roman number

def old_roman_numeral num 
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

puts('What number would you like to convert to a Roman Numeral?')
user = gets.chomp
puts(old_roman_numeral(user.to_i))