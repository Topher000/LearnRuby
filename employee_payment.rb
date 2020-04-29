# This will track all the working hours for every employee you enter and return what you owe them
class Employee
    # giving the class
    attr_accessor :first_name, :last_name, :employee_num, :hours, :rate

    def initialize(first_name, last_name, employee_num, hours, rate)
        @first_name = first_name
        @last_name = last_name
        @employee_num = employee_num
        @hours = hours
        @rate = rate
    end

    def payment
        puts "You owe #{@first_name} #{@last_name} $#{@hours * @rate}"
        puts "Do you want to pay her now?"
        input = gets.chomp.downcase
        if input == 'yes'
            worker7.hours  = 0
            puts worker7.hours
        end

    end
end



worker1 = Employee.new("Topher", "King", "1", 40, 8)
worker2 = Employee.new("John", "Tompson", "2", 40, 10)
worker3 = Employee.new("Clark", "Kent", "3", 40, 9)
worker4 = Employee.new("Marjorie", "Church", "4", 30, 15)
worker5 = Employee.new("Jenny", "Kim", "5", 60, 10)
worker6 = Employee.new("Hayden", "Wilding", "6", 50, 11)
worker7 = Employee.new("Ashley", "Price", "7", 20, 15)




worker7.payment

