def getCount(inputStr)
    vowel = ['a', 'e', 'i', 'o', 'u']
    vowel_count = 0
    inputStr.downcase.each_char do |line|
        if vowel.include? line
            vowel_count += 1
        end
    
    end
    puts vowel_count
end

getCount("Abracadabra")