require "byebug"

#Phase 1
    #my_min
    
    
    def my_min_1(array)#O(n**2)
        minimum = 0#O(1)

        (0..array.length-1).each do |i1|#O(n)
            (i1+1...array.length).each do |i2|#O(n)
                minimum_of_two = 0#O(1)
                if array[i1] < array[i2]#O(1)
                    minimum_of_two = array[i1]#O(1)
                end

                if minimum > minimum_of_two#O(1)
                    minimum = minimum_of_two#O(1)
                end
            end
        end
        minimum#O(1)
    end

# list_1 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p  my_min_1(list)  # =>  -5

#Phase-1: the complexity is O(n**2) which is quadratic.


#Phase_2
    #my_min_2

def my_min_2(array)#O(n)
    array.inject do |acc, ele|#O(n)
        if acc < ele
            acc
        else
            ele
        end
    end
end

# list_2 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p  my_min_2(list)  # =>  -5

#Phase-2: the complexity is O(n) which is linear.


#Phase_1
    #largest_contiguous_subsum
   
#Phase-2: the complexity (n**3 + n**3 + n**2)
# n**3 is the most dominant. THe complexitiy of big-o  is n**k and k = 3 (Polynomial)

    def largest_contiguous_subsum_1(list)    
    subs = []       #O(1)
        (0...list.length).each do |start_num| #O(n)
            (start_num...list.length).each do |end_num| #O(n)
                subs << list[start_num..end_num] #O(n)
             end
        end
    subs_sum = []                   #O(1)
        subs.each do |sub|          #O(n**2)
            sub_sum = 0             #O(1)
            sub.each {|s| sub_sum += s} #O(n)
            subs_sum << sub_sum     #O(1)
        end
        subs_sum.inject do |acc,el| #O(n)
            if acc > el             #O(1)
                acc                 #O(1)
            else
                el                  #O(1)
            end
        end
    end


# list = [5, 3, -7]  => 8

# list = [2, 3, -6, 7, -6, 7] #=> 8

# list = [-5, -1, -3]  #=> -1

# p largest_contiguous_subsum_1(list)
 

#Phase_2
    #largest_contiguous_subsum

# (6+ n*9) 
def largest_contiguous_subsum_2(list)# [2, 3, -6, 7, -6, 7]
    largest_num = list[0]#2                                      O(1)
    running_sum = list[0]#2 - 5 after entering loop.             O(1)

    (1...list.length).each do |i|                                #O(n)                                
        running_sum = 0 if running_sum < 0                       #O(1)
        running_sum += list[i]                                   #O(1)
        largest_num = running_sum if running_sum > largest_num   #O(1)
    end
    return largest_num                                           #O(1)
end


list = [2, 3, -6, 7, -6, 7] #=> 8
p largest_contiguous_subsum_2(list)

list = [-5, -1, -3] #=> 8
p largest_contiguous_subsum_2(list)