def bfs(graph)
  current_node = graph.keys[0]
  nodes_visited = [current_node]
  queue = []
  graph[current_node].map { |cn| queue.push(cn) }

  until queue.empty?
    node_to_visit = queue.shift
    nodes_visited.push(node_to_visit)
    graph[node_to_visit].each do |n|
      queue.push(n) if !nodes_visited.include?(n) && !queue.include?(n)
    end
  end
  nodes_visited
end

p bfs({
  0=>[1, 2],
  1=>[0, 2],
  2=>[0, 1, 3, 4, 5],
  3=>[2, 4],
  4=>[3, 2],
  5=>[2]}
)

p bfs({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]