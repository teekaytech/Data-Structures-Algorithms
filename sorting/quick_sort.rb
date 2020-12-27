def quick_sort(array)
  if array.length > 1
    pivot = array.shift
    left, right = [], []
    for value in array
      value <= pivot ? left.push(value) : right.push(value)
    end

    p array = quick_sort(left) + [pivot] + quick_sort(right)
  end

  array
end

quick_sort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10