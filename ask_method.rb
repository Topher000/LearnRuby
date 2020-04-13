# Still working though this one
def ask question
    while true
        puts question
        reply = gets.chomp.downcase

        if (reply =='yes' || reply == 'no')
            if reply == 'yes'
                return true
            else
                return false
            end
            break
        else
            puts 'Please answer "yes" or "no"'
        end
    end

    
end

puts 'Hello, and thank you for participating in this experiement'
puts 'Please answer these questions honestlly'

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions..'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for your time'
puts
if wets_bed == true
    puts 'It looks like you "do" wet the bed'
else    
    puts 'It looks like you "don\'t" wet the bed'
end