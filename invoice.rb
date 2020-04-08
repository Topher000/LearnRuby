#get name
puts 'Welcome to your weekly invoice. Please enter your name.'
name = gets.chomp
#as for hourly rate
puts 'Hello ' + name + ', how many hours did you work this week?'
hours = gets.chomp
#ask for hours worked
puts 'Please enter your rate of payment in number form.'
rate = gets.chomp
#if hours over 40 pay time and a half
if hours.to_i > 40.00
    forthours = 40.00*rate.to_f
    overtime = hours.to_f - 40
    overrate = (rate.to_f+(rate.to_i/2))*overtime.to_f
    newpay = forthours.to_f+overrate.to_f
    newpayround = newpay.round(2)
    puts 'Your payment is $' + newpayround.to_s
else
    underfort = hours.to_f*rate.to_f
    underfortround = underfort.round(2)
    puts 'Your payment is $' + underfortround.to_s
end