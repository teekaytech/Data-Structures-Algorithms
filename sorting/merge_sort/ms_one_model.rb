def merge_sort(array1, array2)
  sorted_array = []
  i = 0
  j = 0

  while i < array1.size && j < array2.size
    if array1[i] < array2[j]
      sorted_array << array1[i]
      i += 1
    else
      sorted_array << array2[j]
      j += 1
    end
  end

  if i < array1.size
    sorted_array.concat(array1[i..-1])
  end

  if j < array2.size
    sorted_array.concat(array2[j..-1])
  end

  sorted_array
end