

rom = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
}


# gets number
puts'Enter a rom number'
rom_num = gets.chomp.upcase


# while loop
length = rom_num.length - 1
int_num = 0

# just have it * -1 if it isn't what works
while length >= 0
    if rom[rom_num[length]] < rom[rom_num[length - 1]]
        int_num = int_num + rom[rom_num[length]]
        length = length - 1
    else

end

puts int_num