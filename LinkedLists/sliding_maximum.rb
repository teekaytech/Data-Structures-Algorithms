# O(n)
def sliding_maximum(k, array)
  maximum = []
  i = 0
  while i < (array.count - (k-1))
    j = i + (k-1)
    maximum << array[i..j].max
    i += 1
  end
  maximum
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
