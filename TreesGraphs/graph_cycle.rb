def graph_cycle?(graph)
  current_node = graph.keys[0]
  nodes_visited = [current_node]
  queue = []
  cycle = false
  graph[current_node].map { |cn| queue.push(cn) }

  until queue.empty?
    node_to_visit = queue.shift
    nodes_visited.push(node_to_visit)
    if !graph[node_to_visit].nil?
      graph[node_to_visit].each do |n|
        if !nodes_visited.include?(n) && !queue.include?(n)
          queue.push(n)
        elsif queue.include?(n)
          cycle = true
          break
        end
      end
    end
  end
  cycle
end

puts graph_cycle?({
  0=>[2],
  1=>[4],
  2=>[0, 5, 3],
  3=>[5, 2],
  4=>[5, 1],
  5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
  0=>[2],
  1=>[2],
  2=>[0, 1, 3, 4, 5],
  3=>[2],
  4=>[2]
})
# => false