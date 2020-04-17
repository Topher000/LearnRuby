# using YAML
require 'yaml'

test_array = ['this is a test', 'you are fat', 'cool milk is the best']

test_string = test_array.to_yaml
filename = 'RandomWords.txt'

File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

# printing on new lines
puts "3...\n2...\n1..."

name = 'Kristopher'
zip = 839393

puts "Name = #{name}, Zipcode = #{zip}"
puts
puts "#{2*45+432} Leagues Under the sea, THE REVENGE!"

# methods that will create files using yaml
require 'yaml'

def yaml_save object, filename
    File.open filename, 'w' do |f|
        f.write(object.to_yaml)
    end
end
def yaml_load filename
    yaml_string = File.read filename

    YAML::load yaml_string
end

test_array = ['slick shoes',
                'bully blinders',
                'pinchers of peril']

filename = 'DatasGadgets.txt'

#save
yaml_save test_array, filename
# load it
read_array = yaml_load filename

puts(read_array == test_array)