# create a hash to hold names and birth dates
info = {}

# opens file and loops through it
File.open("birthdates.txt", "r") do |file|
    for line in file.readlines()
        line = line.chomp
        # set a value to count char without a ,
        comma_check = 0
        
        while line[comma_check] != ','
            comma_check = comma_check + 1

        end
        name = line[0..comma_check - 1]
        birth_date = line[-12..-7]
     
        info[name] = birth_date
    end



end


puts "Welcome to the Birthday Helper! \nPlease enter the first and last name of the \nperson\'s birthday you wish to know: "
input = gets.chomp
puts "#{input}'s birthday is #{info[input]}"