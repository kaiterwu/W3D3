def binary_search(arr,value)
    length = arr.length 
    var = value <=> arr[length/2]
        if var == -1 
            binary_search(arr[0...(length/2)],value) 
        elsif var == 1 
            binary_search(arr[((length/2)+1)..-1],value)
        elsif var == 0 
            return arr.index(value) 
        else  
            return nil 
        end
end 