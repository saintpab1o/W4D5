#Anagrams
    #Phase_1

                                                                        #TIME                   #SPACE

    def first_anagram?(first_string, second_string)
        time_1 = Time.now
        possible_perm = first_string.split("").permutation.to_a         #O(n!) + O(n)           
        second_array = second_string.split("")                          #O(n)
        p  Time.now - time_1
        possible_perm.each {|sub| return true if second_array == sub}   #O(n)
        return false                                                    #O(1)
        
        

    end

    p first_anagram?("the quick brown", "dog")
    # p first_anagram?("cat", "tac")