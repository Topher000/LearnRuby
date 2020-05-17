# this method will take a string input from the user and if the word count is greater than or equal to 5 the word is printed in reverse
def spinWords(string)
    fun = string.split
    word = []
    fun.each do |f|
        if f.length  >= 5
            word.push f.reverse
        else
            word.push f
        end
      word.push " "
    end
    word.pop
    puts word.join
end
spinWords('it is a very happy day')