def merge_sort(arr)
    #base case 
    return arr if arr.length <= 1 

    length = arr.length 
    half = length/2 
#create two arrays divided based on half length, .take takes the first n elements and .drop drops the first n elements respectively 
    left_arr = arr.take(half)
    right_arr = arr.drop(half)
#on lines below, we create "sorted" arrs with recursion 
    sorted_left = merge_sort(left_arr)
    sorted_right = merge_sort(right_arr)

    combine(sorted_left,sorted_right)
#this code recursively returns with combine, it will first return base case of [n] and then go through code. 

end 

def combine(arr_l,arr_r)#left arry and right array 
    #base cases 
    return arr_l if arr_r.empty?
    return arr_r if arr_l.empty?

    if arr_l.first <= arr_r.first #this is where we remove the first elements of an array based on whose smaller 
        smallest = arr_l.shift
    else  
        smallest = arr_r.shift 
    end 

    new_arr = combine(arr_l,arr_r)

    [smallest].concat(new_arr) 
    #this method only works if both subarrays are both sorted, OR they are arrays with one element. 
end 