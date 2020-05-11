def make_pairs(keys, values)
    # this is how to do this with inject
    # keys.zip(values).inject({}) do |name, (key, value)|

      # name[key] = value 
       # name    
    
    #end

    # this is how to use it with .to_h
    keys.zip(values).to_h
end


p make_pairs(%i[hi there cake], %w[tom is !])
# {:hi=>"tom, ", :there=>"is", :cake=>"!"}