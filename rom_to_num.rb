

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

count = rom_num.length - 1
addition = 0

# start a while loop to run through this string
while count >= 0 
    test1 = rom[rom_num[count]]

    # subtrac 1 to count
    count = count - 1
    
    
end
# converts number to integer
puts test1
