def quick_sort(arr)
    return arr if arr.length <= 1 
    border = arr.first 
    left_arr = []
    right_arr = [] 
    arr[1..-1].each do |ele| 
        left_arr << ele if ele < border
        right_arr << ele if ele >= border
    end 

    quick_sort(left_arr) + [border] + quick_sort(right_arr)

end 