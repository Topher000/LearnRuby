def shuf_sort list
    shuffeld = []
    while list.length > 0 
        ran_num = rand(list.length)
        still_sort = []
        count = 0

        # Loop in list
        list.each do |start|
            if count == ran_num
                shuffeld.push start
            else
                still_sort.push start
            end
            count = count + 1
        end
        list = still_sort
    end
    shuffeld
end

puts shuf_sort(['a','b','c','d','h','j','q','p'])
