class Array 
    def merge_sort(&prc) #instance method 
        #methods cannot access a block, if no block is given with &prc, input is default nil 
        prc ||=Proc.new {|a,b|a<=>b} # sets default block argument to standard sort, have to set Proc.new within method 

        return self if self.length <=1 
        mid = self.length/2 
        left = self.take(mid)
        right = self.drop(mid)

        sorted_left = left.merge_sort(&prc)
        sorted_right = right.merge_sort(&prc)

        Array.merge(sorted_left,sorted_right,&prc)

    end 

    def self.merge(left,right,&prc)#CLASS METHOD because it begins with self
        return left if right.empty?
        return right if left.empty?
        
        final_result = [] 

        until left.empty? || right.empty?
            if prc.call(left[0],right[0]) <= 0 
                final_result <<  left.shift 
            else   
                final_result << right.shift 
            end 
        end 

        new_arr = merge(left,right,&prc)

        final_result.concat(new_arr)
     end 
end 
