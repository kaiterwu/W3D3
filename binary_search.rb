def binary_search(arr,value)
    length = arr.length 
    if length == 1 
        return value-1 if arr[0] == value 
    else  
        return nil 
    end 

    if length.even? 
        var = value <=> ((arr[length/2] + arr[(length/2)+1])/2)

        binary_search(arr[0..length/2],value) if var == -1 
        binary_search(arr[((length/2)+1)..-1],value) if var == 1 
    else  
        var = value <=> (arr[length/2] + arr[(length/2)+1])/2
        binary_search(arr[0..length/2],value) if var == -1 
        return array.index(value) if var == 0 
        binary_search(arr[((length/2)+1)..-1],value) if var == 1 
    end


        

    
    
end 