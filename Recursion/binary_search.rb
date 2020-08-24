def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  midpoint = (min_interval + max_interval) / 2
  num_sqrt = midpoint ** 2
  
  return midpoint if num_sqrt == number
  if num_sqrt < number
    sqrt_recursive(number, midpoint+1, max_interval)
  else
    sqrt_recursive(number, min_interval, midpoint-1)
  end
  
end

puts sqrt(25)
puts sqrt(7056)
