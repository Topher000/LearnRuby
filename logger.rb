def log descrip, count, &block
    
    spacing = '    ' * count
    
    puts "#{spacing}Starting '#{descrip}'..."
    result = block.call
    puts "#{spacing}...'#{descrip}' finished, returning: #{result}"
end

log 'outer block', 0 do 
    log 'some little block', 1 do
        log 'yet another block', 2 do 
            'i like thai food'.chars.sort.join  
        end
        2 + 3
    end
    
    false
end



