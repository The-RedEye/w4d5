def my_min_1(arr)
    arr.each_with_index do |ele, i|
        new_arr = arr.drop(ele)
        # lowest = ele if lowest > ele
    end
    lowest
end
# ele arr.drop(ele)


def my_min_2(arr)
    lowest = arr[0]
    arr.each do |ele|
        lowest = ele if lowest > ele
    end
    lowest
end