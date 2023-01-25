def recursion_1(n,e)
    return 1 if e == 0 
    n*recursion_1(n,e-1)

end 

def recursion_2(n,e)
    return 1 if e == 0 
    return n if e == 1 

    if e.even? 
       # n*recursion_2(n,e/2)**2
       even_var = recursion_2(n,e/2)
        even_var * even_var 
    else  
        #n*recursion_2(n,((e-1)/2)**2)
        odd_var = recursion_2(n,((e-1)/2))
        n * odd_var * odd_var 
        
    end 
end 