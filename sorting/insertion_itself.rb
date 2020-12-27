def sort_itself(array)
  (0...array.length).each do |index|
    if index > 0
      until index.zero?
        if array[index] < array[index-1]
          current = array[index]
          array[index], array[index-1] = array[index-1], current
        end
        index -= 1
      end
      puts array.join(' ')
    end
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9