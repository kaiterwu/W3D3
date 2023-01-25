def range (first,last)
    
    return [] if last < first
    return [first] if last == first + 1
    new_arr = (range(first, last-1))
    new_arr << (last - 1)
end 






