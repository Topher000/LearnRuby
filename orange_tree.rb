# Not Finished yet
class OrangeTree

    def initialize 
        @years_old = 0 # starts the tree as if it where just planted
        @height = 0 # track the height of the tree
        @fruit = 0 # counts the fruit on the tree
    end

    # returns the height of the tree
    def tree_height
        if @years_old == 0
            puts 'You just planted the tree. Let it grow a year before you check the height.'
        else
            puts "Your orange tree is #{@height} feet tall!"
        end
    end

    # Counts the oranges
    def count_the_oranges
        puts "You have #{@fruit} oranges on your orange tree this year"
    end

    # pick fruit off the tree
    def pick_fruit
        if @fruit >= 1
            @fruit = @fruit - 1
            puts 'What a delicious orange!'
        else
            puts 'There are no more oranges to pick this year'
        end
    end

    def one_year_passes
        # check years of tree
        if @years_old < 20
            @years_old + 1
        else
            puts "Your tree is #{@years_old} years old and has died. Time to plant another tree"
            exit
        end
        # add height to the tree if it is less than 30 feet high
        if @height < 30
            @height + 3
        end
        # adds fruit to the tree each year after three years
        if @years_old >= 3
            @fruit = 3
        end
    end



end

tree = OrangeTree.new
tree.tree_height
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.tre