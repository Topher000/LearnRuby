# Clock Method
def dong_hour some_proc
    hour = Time.new.hour
    if hour > 12
        hour = hour - 12
        hour.times do
            some_proc.call
        end
    elsif hour > 0 && hour <= 12
        hour.times do
            some_proc.call
        end
    # If it is 12 am run this
    elsif hour == 0 
        12.times do
            some_proc.call
        end
    end
end
# this proc prints dong once
time = Proc.new do 
    puts 'DONG'
end

dong_hour time