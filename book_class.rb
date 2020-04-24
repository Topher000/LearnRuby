class Book
    attr_accessor :title, :author, :pages


end

book1 = Book.new()
book1.title = 'Harry Potter'
book1.author = 'JK Rowling'
book1.pages = 400


class Airplane
    attr_accessor :name, :manufacturer, :family

    def initialize(name, manufacturer, family)
        @name = name
        @manufacturer = manufacturer
        @family = family
    end


    def fly 
        puts 'I am flying'
    end

    def information
        puts "The #{manufacturer} #{name} is part fo the #{family} family"
    end
end
 

a346 = Airplane.new('abfe-800', 'Boeing', '732')
a346.information

