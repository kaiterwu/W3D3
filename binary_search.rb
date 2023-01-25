def binary_search(arr,value)
    length = arr.length 
    if length == 1 
        return value-1 if arr[0] == value
        end
    else  
        return nil 
    end 

    middle_ele = ((arr[length/2] + arr[(length/2)-1])/2)
    lower_search = binary_search(arr[0..length/2],value) if var == -1 
    upper_search = binary_search(arr[((length/2)+1)..-1],value) if var == 1 

    if length.even? 
        var = value <=> middle_ele
        lower_search
        upper_search
    else  
        var = value <=> arr[length/2]
        lower_search
        return array.index(value) if var == 0 
        upper_search
    end


        

    
    
end 