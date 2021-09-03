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

def largest_contiguous_subsum_1(list)
    arr = []
    # debugger
    list.each_with_index do |ele, i|
        temp_arr = []
        # debugger
        (i...list.length).each do |i2|
            temp_arr << list[i..i2]
        end
        arr += temp_arr
        # debugger 
    end
    largest_sum = 0
    arr.each do |sub_arr|
        # debugger 

       temp_sum = sub_arr.sum 
      largest_sum = temp_sum if temp_sum > largest_sum   
    # debugger
    end
    largest_sum
end 

def largest_subsum(list)
    largest = list[0]
    current_sum = list[0]
  
    # [2, 3, -6, 7, -6, 7]
    # [-5, -1, -3]
    (1...list.length).each do |i| # -5
        # check if current_sum < 0 (neg num)
        # resetting current sum = 0 (only reset with neg)
        current_sum = 0 if current_sum < 0
        current_sum += list[i] #-6

        largest = current_sum if current_sum>largest #6      
    end

    largest
end

#[2, 3, -6, 7, -6, 7]


#  list = [5, 3, -7]
#  p largest_contiguous_subsum(list) 
