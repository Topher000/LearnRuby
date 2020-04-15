#rec
def factorial num
    if num < 0
        return 'You can\'t take the factorial of a negative number!'
    end
    if num <= 1
        1
    else
        num * factorial(num-1)
    end
end

#it
def factorialit num
    fact_num = 1
    temp = 1
    while temp <= num
        fact_num = fact_num * temp
        temp = temp + 1
    end
    puts fact_num
end

factorialit(30000)
factorial(30000)



