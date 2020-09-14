def toh(n, from_tower=1, mid_tower=2, to_tower=3)
  if n == 1
    puts "#{from_tower} -> #{to_tower}"
    return
  else
    toh(n-1, from_tower, to_tower, mid_tower)
    puts "#{from_tower} -> #{to_tower}"
    toh(n-1, mid_tower, from_tower, to_tower)
  end
end


toh(5)
