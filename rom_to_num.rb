
def rom_to_num rom_num

    rom = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000}
    # while loop
    rom_num = rom_num.upcase
    length = rom_num.length - 1
    var = 0
    int_num = 0
    last = 0
    v = 0
    v = rom_num[length]
    num = rom[v]
    if !num
        puts 'Not a vaild roman number'
        exit
    end  
    
    while length >= 0
        # v calls the letter
        v = rom_num[length]
        num = rom[v]
        
    
        if num < last
            var = num * -1
        else
            var = num
            last = num
        end
        int_num = int_num + var
        length = length -1
        
    end
    int_num
end


# gets number
puts 'What roman number would you live to convert to a number?'
input = gets.chomp
puts(rom_to_num(input))