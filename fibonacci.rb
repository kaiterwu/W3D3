def fib(n)
    return 0 if n == 0
    return 1 if n == 1
    

    new_arr = [0,1]

    i = 2
    while i < n 
        new_arr << new_arr[-1] + new_arr[-2]
        i += 1
    end

    new_arr

end


def fib_rec (n)

    return [0,1].take(n) if n <= 2

    fib_var =  fib(n-1) 
    fib_var << fib_var[-1] + fib_var[-2] 

end