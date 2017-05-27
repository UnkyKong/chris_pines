list = []

loop do
  puts 'Add an item to the list.'
  puts '> '
  temp = $stdin.gets.chomp
  if temp == 'done'
    break
  else
    list.push temp
  end
end


list.each_index do |first|
  (first + 1...list.length).each do |second|
    if list[first] > list[second]
      list[first], list[second] = list[second], list[first]
    end
  end
end

puts list.join(', ')
