def move(starting, goal)
  aux_peg = (1..3).find { |n| n != starting && n != goal }
  steps = []
  toh(2, starting, goal, aux_peg, steps)
  steps.join(' ')
end

def toh(n, from_tower, to_tower, mid_tower, steps)
  if n == 1
    steps << "#{from_tower}->#{to_tower}"
    return
  else
    toh(n-1, from_tower, mid_tower, to_tower, steps)
    steps << "#{from_tower}->#{to_tower}"
    toh(n-1, mid_tower, to_tower, from_tower, steps)
  end
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
