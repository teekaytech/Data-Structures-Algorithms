def bubble_sort(array)
  (0...array.length-1).each do |i|
    swap = true # optimizing the algo if no swap is done on a pass before the last
    for j in 0...array.length-1-i do # optimizing the number of passes (i)
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j] # swap
        swap = false
      end
    end
    break if swap
  end
end

bubble_sort([1, 4, 3, 6, 9, 2])
bubble_sort([16, 14, 5, 6, 9])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9