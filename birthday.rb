# When will I turn one billion seconds old
birth_day = Time.local(1995, 9, 26, 9, 45, 34)

new_birth_day = birth_day + 1000000000

puts new_birth_day

# Birthday SPANK
puts 'What year where you born'
year = gets.chomp
puts 'What month where you born'
month = gets.chomp
puts 'What day where you born'
day = gets.chomp

birth = Time.local(year, month, day)
time = Time.new 

sec_old = time - birth
sec_round = sec_old.to_i
new_year = ((((sec_round/60)/60)/24)/365)

puts 'You are ' + new_year.to_s + ' years old'
new_year.times do
    puts 'SPANK'
end
