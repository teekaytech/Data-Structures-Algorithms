def merge_sort(array1, array2)
  sorted = []
  until array1.empty? || array2.empty?
    if array1.first < array2.first
      sorted << array1.shift
    else
      sorted << array2.shift
    end
  end
  sorted.concat(array2) if !array2.empty?
  sorted.concat(array1) if !array1.empty?
  sorted
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]

p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])