def merge_sort(array)
    return array if array.length <= 1
    half = array.length / 2
    left = merge_sort(array[0..half - 1])
    right = merge_sort(array[half..array.length])
    merges(left, right)
end

def merges(left, right)
    return right if left.length == 0
    return left if right.length == 0
    if left.first < right.first
        [left.first] + merges(left[1..left.length], right)
    else
        [right.first] + merges(left, right[1..right.length])
    end
end