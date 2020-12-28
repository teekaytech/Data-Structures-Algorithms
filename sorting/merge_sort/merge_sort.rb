def merge(array1, array2)
  sorted = []
  i = 0
  j = 0

  while i < array1.length && j < array2.length
    if array1[i] <= array2[j]
      sorted << array1[i]
      i += 1
    else
      sorted << array2[j]
      j += 1
    end
  end

  sorted.concat(array1[i..-1]) if i < array1.length
  sorted.concat(array2[j..-1]) if j < array2.length
  sorted
end

def merge_sort(array, lb=0, rb=array.length-1)
  return array if lb >= rb

  mid = (lb + rb) / 2
  array1 = merge_sort(array[lb..mid])
  array2 = merge_sort(array[mid+1..rb])
  merge(array1, array2)
end

p merge_sort([2,1,5,6,3,7])
p merge_sort([1, 3, 9, 11, 2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]