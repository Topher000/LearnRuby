def say_moo this_is_test
    puts 'moooooo...'*this_is_test
end

say_moo 3

def double_this num
    num_times_2 = num*90
    puts num.to_s+' times 90 '+num_times_2.to_s
end

double_this 44

tough_var = 'You can\'t even touch my variable!'

def little_pest tough_var
    tough_var = nil
    puts 'haha, I ruined your variable!'
end
little_pest tough_var
puts tough_var
puts

x = 4
def square x
    puts(x * x)
end
puts square x

#ask the user how are you doing today
def hello_there
    puts 'how are you doing'
    respons = gets.chomp
    puts 'great to hear'
end
hello_there

def say_moo number_of_moos
    puts 'mooooo....'*number_of_moos
    'yellow submarine'
end

x = say_moo 3
puts x.capitalize + ', dude...'
puts x

def favorite_food name
    if name == 'Lister'
        return 'vindallo'
    end

    if name == 'Rimmer'
        return 'mashed potatoes'
    end

    'hard to say..maybe fried plantain'
end

def favorit_drink name
    if name == 'Jean-Luc'
        puts 'tea, Earl Grey, hot'
    elsif name == 'Kathryn'
        'coffee, black'
    else
        'perhaps.... horchata?'
    end
end

puts favorite_food('Rimmer')
puts favorite_food('Lister')
puts favorite_food('Cher')
puts favorit_drink('Kathryn')
puts favorit_drink('Oprah')
puts favorit_drink('Jean-Luc')
favorite_food('Lister')

# ask method
def ask question
    while true
        puts question
        reply = gets.chomp.downcase

        if (reply =='yes' || reply == 'no')
            if reply == 'yes'
                answer = true
            else
                answer = false
            end
            break
        else
            puts 'Please answer "yes" or "no"'
        end
    end

    answer # this is what we return (true / false)
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you we the bead?'
ask 'Do you like easting chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions..'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed