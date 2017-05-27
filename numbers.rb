def english_number(number)
  
  num_string = ''

  ones_place = %w[one two three four five six seven eight nine]
  tens_place = %w[ten twenty thirty fourty fifty sixty seventy eighty ninty]
  teenagers = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

  # Left is the number remaining
  # Write is the part we are working on.
  left = number
  write = left / 1_000_000_000
  left -= write * 1_000_000_000

  if write > 0
    trillions = english_number(write)
    num_string = num_string + trillions + ' trillions'
    num_string += ' ' if left > 0
  end

  write = left / 1_000_000
  left -= write * 1_000_000

  if write > 0
    millions = english_number(write)
    num_string = num_string + millions + ' million'
    num_string += ' ' if left > 0
  end

  write = left / 1000
  left -= write * 1000

  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + ' thousand'
    num_string += ' ' if left > 0
  end

  write = left / 100
  left -= write * 100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'
    num_string += ' ' if left > 0
  end

  write = left / 10
  left -= write * 10

  if write > 0
    if (write == 1) && (left > 0)
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
    end
    num_string += '-' if left > 0
  end

  write = left
  left = 0
  
  if write > 0
    num_string += ones_place[write - 1]
  end
  num_string
end

def what_number
  puts 'What number?'
  puts '> '
  reply = $stdin.gets.chomp.to_i
  if reply == 0
    return puts 'zero'
  elsif reply > 0
    print '> '
    puts english_number(reply)
  else
    what_number
  end
end

what_number

