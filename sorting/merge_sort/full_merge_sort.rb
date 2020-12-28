def refine_arr(array)
  splitted_arr = []
  splitting = array.map { |m| m.split(' ') }
  splitting.each { |a| splitted_arr << [a[0].to_i, a[1]]}
  splitted_arr
end

def refine_answer(array)
  array.map {|response| response[1]}
end

def merge(array1, array2)
  sorted = []
  i = 0
  j = 0

  while i < array1.length && j < array2.length
    if array1[i][0] <= array2[j][0]
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

def full_merge_sort(array)
  refined_array = refine_arr(array)
  refine_answer(merge_sort(refined_array))
end

p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
