def exact_sum?(k, coins)

  sum = 0
  output = false;

  for con in coins do
    next if sum + con > k
    sum += con
    p sum
     output = true if sum == k;
  end

  return output;
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
