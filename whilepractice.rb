#take a set up nubers and find what is devisiable by 2 and 4
puts 'Enter a  start number'
startnum = gets.chomp.to_i
puts 'Enter an end number'
endnum = gets.chomp.to_i

# count the current number
curnum = startnum
#while statement to loop through set range
while curnum <= endnum
    if curnum%2 == 0
        if curnum%4 == 0
            puts curnum
        end
    end
    curnum = curnum + 1

end