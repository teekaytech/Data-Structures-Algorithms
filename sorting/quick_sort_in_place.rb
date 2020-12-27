def partition(array, low, high)
  pivot = array[high]
  dividing_index = low

  (low...high).each do |index|
    value = array[index]
    if value <= pivot
      array[index] = array[dividing_index]
      array[dividing_index] = value
      dividing_index += 1
    end
  end
  array[high] = array[dividing_index]
  array[dividing_index] = pivot
  dividing_index
end

def quick_sort_in_place(array, low = 0, high = array.length - 1)
  if high > low
    pivot = partition(array, low, high)
    quick_sort_in_place(array, low, pivot - 1)
    quick_sort_in_place(array, pivot + 1, high)
  end
  array
end

array = [5, 8, 1, 3, 7, 10, 2]
p quick_sort_in_place(array, 0, array.length-1)