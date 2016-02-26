def bubble_sort(list)
    list = bubble_sort_by(list) do |left, right|
        left > right
    end
    list
end

def bubble_sort_by(list)
    #initalize variables used to optimize sort to not waste compute cycles
    sorted = false
    passes = 0
    #keep looping until no swaps happen
    until sorted == true
        sorted = true
        #loop for length of array minus the n passes already done as end of array is sorted
        (0..list.length-passes).each do |i|
            #break out of loop if you are at end of array as to stay in bounds
            if i+1 >= list.length then break end
            #test against bloc condition
            logic_result = yield(list[i], list[i+1])
            #if logic_result is a number convert to a boolean
            if logic_result.is_a? Integer
                logic_result = logic_result < 1 ? false : true
            end
            #if true then swap values
            if logic_result
                sorted = false
                temp = list[i]
                list[i] = list[i+1]
                list[i+1] = temp
            end #end if swap
        end #end list loop
        passes += 1
    end #end until sorted loop
    list
end