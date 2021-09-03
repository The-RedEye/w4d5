require "byebug"

def my_min_1(arr)
    # debugger#compare arr[idx] with all other arr(ele)
    arr.each do |ele| #n
        new_arr = arr.reject { |ele2| ele2 == ele } #n^2
        # debugger
        is_lowest = true
        new_arr.each do |new_ele|
            
            if new_ele < ele
                is_lowest = false
            end
        # debugger    
        end
        return ele if is_lowest == true
    end
end
# ele arr.drop(ele)


def my_min_2(arr)
    lowest = arr[0]
    arr.each do |ele|
        lowest = ele if lowest > ele
    end
    lowest
end