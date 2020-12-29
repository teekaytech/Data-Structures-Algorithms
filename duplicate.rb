def duplicates(arr1, arr2)
  until arr1.size.zero?
    index = arr2.find_index(arr1.first)
    if index
      arr2.delete_at(index)
      arr1.shift
    end
  end
  arr2.sort
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]