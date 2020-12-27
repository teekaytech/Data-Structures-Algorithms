def partition(array)
  pivot = array.first
  left_arr = []
  right_arr = []
  (1...array.length).each do |val|
    left_arr << array[val] if array[val] <= pivot
    right_arr << array[val] if array[val] > pivot
  end

  (left_arr << pivot).concat(right_arr)
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]