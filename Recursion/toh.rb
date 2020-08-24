# Tower of Hanoi

def toh(n, from_tower, to_tower, mid_tower)
  if n == 1
    puts "#{from_tower} -> #{to_tower}"
    return
  else
    toh(n-1, from_tower, mid_tower, to_tower)
    puts "#{from_tower} -> #{to_tower}"
    toh(n-1, mid_tower, to_tower, from_tower)
  end
end


toh(2, 2, 3, 1)
# def move(starting, goal)
#   pole1 = pole2 = pole3 = []

#   pole1 = [1, 2] if starting == 1
#   pole2 = [1, 2] if starting == 2
#   pole3 = [1, 2] if starting == 3


#   pole1
#   # your code here
# end


# puts move(1, 3)
# => 1->2 1->3 2->3

# puts move(2, 3)
# => 2->1 2->3 1->3
