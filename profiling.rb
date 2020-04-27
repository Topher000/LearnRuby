# You can turn profiling on by putting ==, or != if you don't want to run profile
def profile block_description, check, &block
    if check != true
        start_time = Time.new
        block.call
        duration = Time.new - start_time
        puts "#{block_description}: #{duration}"
    end
end

profile '25000 doublings', true do 
    number = 1
    25000.times do 
        number = number + number
    end
    puts "#{number.to_s.length} digits"
end

profile 'count to a million', true do 
    number = 0
    1000000.times do 
        number = number + 1
    end
end

profile 'test one', true do
    puts 'we did it'
end
