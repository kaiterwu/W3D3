class Array  
    def my_inject(acc=nil,&prc)
        arr = self 
        if acc.nil? 
            acc = self[0]
            arr = self[1..-1]
        end 
        arr.each {|ele|acc = prc.call(acc,ele)}
        acc

    end 
end 