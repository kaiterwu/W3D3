def deep_dup(arr)
    new_arr =[]
    arr.each do |ele| 
         if !(ele.is_a?(Array))
            new_arr << ele.dup   
         else 
            new_arr << deep_dup(ele)
         end
    end 
    new_arr 
        
end 