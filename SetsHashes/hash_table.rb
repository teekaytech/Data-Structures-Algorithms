def hash_table(arr)
  h_table = Hash.new()
  (0...arr.length).each do |key|
    arr.each do |val|
      index = val.abs % 11
      if key.eql?(index)
        if h_table[index].nil?
          h_table[index] = [val]
        else
          h_table[index] << val
        end
      end
    end
  end
  h_table.values.flatten
end

p hash_table([2367, -65325, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3])
# [7832, -3289, 980, 2367, 134, 3291, 3, -65325, -65326, 789, -185007]



p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]