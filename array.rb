list = []


while true
  puts 'Add an item to the list.'
  puts '> '
  temp = $stdin.gets.chomp
  if temp == 'done'
    break
  else
    list.push temp
  end
end

puts list.sort.join(', ')
