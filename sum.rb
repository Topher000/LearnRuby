

class Array 
    def my_sum2 &block
     
   
    map(&block).inject(:+)
    
    end
end
puts [1,2,3].my_sum2 { |n| n ** 2 } #=> 12

puts [1,2,3].map { |p| p + 5}.inspect