def running_time(array)
  times = 0
  (0...array.length).each do |index|
    if index > 0
      until index.zero?
        if array[index] < array[index-1]
          current = array[index]
          array[index], array[index-1] = array[index-1], current
          times += 1
        end
        index -= 1
      end
    end
  end
  times
end

puts running_time([1, 4, 3, 6, 9, 2])

puts running_time([2, 1, 3, 1, 2])
# => 4