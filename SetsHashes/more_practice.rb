require 'set'

def find_pairs(array, k)
  all_pairs = Set.new()
  output = []

  array.each do |element|
    array.select { |i| all_pairs << Set[element, i] if i + element == k }
  end

  all_pairs.each { |my_set| output << my_set.to_a }
  output
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]