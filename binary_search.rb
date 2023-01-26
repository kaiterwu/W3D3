def binary_search(arr,value)
    return nil if arr.empty? 
    
    mid = arr.length/2
    var = value <=> arr[mid]
        if var == -1 
             binary_search(arr[0...mid],value)

        elsif var == 1 
            result = binary_search(arr[mid+1..-1],value)
            return nil if result.nil? 
            return result + mid+1 

             
        elsif var == 0 
            return mid 
        end
end 

