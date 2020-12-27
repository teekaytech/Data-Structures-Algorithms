def insertion_sort(array)
  x = array.last
  (0...array.length).reverse_each do |index|
    if array[index-1] > x && index-1 >=0
      array[index] = array[index-1]
      puts array.join(' ')
      array[index-1] = x
    end
  end
  puts array.join(' ')
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9