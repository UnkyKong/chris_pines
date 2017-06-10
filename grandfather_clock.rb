def grandfather_clock
  hours = Time.now.hour
  hours -= 12 if hours > 12
  puts hours
  hours.times do
    yield
  end
end

grandfather_clock do
  puts 'Dong!'
end
