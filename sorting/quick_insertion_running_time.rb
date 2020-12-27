def insertion_sort(array)
  (0...array.length).each do |index|
    if index > 0
      until index.zero?
        if array[index] < array[index-1]
          current = array[index]
          array[index], array[index-1] = array[index-1], current
          $insertion_sort_counter += 1
        end
        index -= 1
      end
    end
  end
end

def partition(array, low, high)
  pivot = array[high]
  dividing_index = low
  (low...high).each do |index|
    value = array[index]
    if value <= pivot
      array[index], array[dividing_index] = array[dividing_index], value
      dividing_index += 1
      $quick_sort_counter += 1
    end
  end
  array[high], array[dividing_index] = array[dividing_index], pivot
  $quick_sort_counter += 1
  dividing_index
end

def quick_sort(array, low = 0, high = array.length - 1)
  if high > low
    pivot = partition(array, low, high)
    quick_sort(array, low, pivot - 1)
    quick_sort(array, pivot + 1, high)
  end
  array
end

def quicksort_running_time(array)
  $quick_sort_counter = 0
  $insertion_sort_counter = 0

  insertion_sort(array.clone)
  quick_sort(array.clone)

  $insertion_sort_counter - $quick_sort_counter
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
