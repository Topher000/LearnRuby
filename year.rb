puts 'Pick a starting year'
startyear = gets.chomp.to_i
puts 'Pick an ending year'
endyear = gets.chomp.to_i

year = startyear
while year <= endyear
    if year%4 == 0
        if year%100 != 0 || year%400 == 0 
            puts year
        end
    end
    year = year + 1
end