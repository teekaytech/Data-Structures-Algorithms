def partition(array, low, high)
  pivot = array.first
  i = low+1

  (low+1..high).each do |j|
    value = array[j]
    if value <= pivot
      array[j] = array[i]
      array[i] = value
      i += 1
    end
  end

  # insert the pivot into the position of the last small value
  array[low] = array[i-1]
  array[i-1] = pivot
  i
end

def simple_quicksort(array, low = 0, high = array.length - 1)
  if high > low
    pivot = partition(array, low, high)
    simple_quicksort(array, low, pivot - 1)
    simple_quicksort(array, pivot + 1, high)
  end
  array
end

array = [5, 8, 1, 3, 7, 10, 2]
# partition(array, 0, array.length-1)
p simple_quicksort(array)
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10