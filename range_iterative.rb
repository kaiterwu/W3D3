def range(first, last)
    new_arr = []
    (first...last).each do |ele|
        new_arr << ele
    end
    return new_arr
end

