def sort_events(array)
  # Sort the events by their end time in ascending order.
  events = (0...array.length).step(2).collect { |index| [array[index], array[index+1]] }

  events.sort_by! { |event| event[1]}
end
def time_scheduler(array)
  sorted = sort_events(array)
  output = [sorted[0]]
  (0...sorted.length).each do |event|
    if output[-1][1] <= sorted[event][0]
      output << sorted[event]
    end
  end
  output
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]