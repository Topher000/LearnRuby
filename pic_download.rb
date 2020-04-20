# moves jpg files
Dir.chdir 'C:/Users/Kristopher/Tophers-Stuff/NewImag'

# Find pictures to be moved
pic_names = Dir['C:/Users/Kristopher/Tophers-Stuff/Images/*.JPG']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} file(s):  "
puts

pic_number = 1

pic_names.each do |name|
    print '.' # progress bar
    new_name = if pic_number < 10 
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end

    # check if the file already is in the folder
    if(File.exist?(new_name.to_s))
        abort 'That batch name has already been used. Please run the program again and enter a new batch name.'
        exit 1
    else
        File.rename name, new_name
    end

    pic_number = pic_number + 1
end

puts
puts 'Done'
