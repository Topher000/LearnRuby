class Dragon

    def initialize name
        @name = name
        @asleep = false
        @stuff_in_belly = 10 # He is full
        @stuff_in_intestine = 0 # He does not need to go

        puts "#{@name} is born."
    end

    def feed
        puts "You feed #{@name}."
        @stuff_in_belly = 10
        passage_of_time
    end

    def walk
        puts "You walk #{@name}."
        @stuff_in_intestine = 0
        passage_of_time
    end

    def put_to_bed
        puts "You put #{@name} to bed"
        @asleep = true
        3.times do 
            if @asleep
                passage_of_time
            end
            if @asleep
                puts "#{@name} snores, filling the room with smoke."
            end
        end
        if @asleep
            @asleep = false
            puts "#{@name} wakes up slowly."
        end
    end

    def toss
        puts "You toss #{@name} up into the air."
        puts 'He giggles, which singes your eyebrows.'
        passage_of_time
    end
    
    def rock
        puts "You rock #{@name} gently."
        @asleep = true
        puts 'He briefly dozes off...'
        passage_of_time
        if @asleep
            @asleep = false
            puts '...but wakes when you stop'
        end
    end

    private
    # "private" means that the methods defined here are
    # methods internal to the object. (You can feed your 
    # dragon but you can not ask him whether he is hungry)
    def hungry?
        # end a method with ? if it returnes true or false
        @stuff_in_belly <= 2
    end

    def poopy?
        @stuff_in_intestine >=8
    end

    def passage_of_time
        if @stuff_in_belly > 0 
            # move food from belly to intestine
            @stuff_in_belly = @stuff_in_belly - 1
            @stuff_in_intestine = @stuff_in_intestine + 1
        else
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts "#{@name} is starving! In despewration, he ate YOU!"
            exit # ends program
        end
        if @stuff_in_intestine >= 10
            @stuff_in_intestine = 0
            puts "Whoops! #{@name} had an accident..."
        end
        if hungry?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts "#{@name}'s stomach grumbles..."
        end

        if poopy?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts "#{@name} does the potty dance..."
        end
    end
end

puts 'Welcome to pet dragon!'
puts 'What would you like to name your pet dragon?'
dragon_name = gets.chomp
pet = Dragon.new dragon_name
puts "You can do any of these folowing actions: \n
    'feed', 'walk', 'sleep', 'toss', 'rock'"
puts 'Enter the action you wish to do to your pet:'
# get the action from the user
# loops while inupt is == and if the user wishes to continue
while true
    action = gets.chomp
    if action == 'feed'
        pet.feed
    elsif action == 'walk'
        pet.walk
    elsif action == 'sleep'
        pet.put_to_bed
    elsif action == 'toss'
        pet.toss
    elsif action == 'rock'
        pet.rock
    end
    puts 'Would you like to continue?'
    input = gets.chomp
    if input.downcase == 'yes'
    else
        puts 'Thanks for playing!'
        exit
    end
    
end

