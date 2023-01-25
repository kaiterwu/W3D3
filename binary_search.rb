def binary_search(arr,value)
    length = arr.length
    if length == 1 
        if arr[0] == value 
            return 0 
        else  
            return nil 
        end 
    end 

    var = value <=> arr[length/2]
        if var == -1 
             binary_search(arr[0...(length/2)],value)

        elsif var == 1 
             binary_search(arr[((length/2)+1)..-1],value)
        elsif var == 0 
            return array.index
        end
end 

