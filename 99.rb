# 99 bottles of beer on the wall
bottles = 99
# loop until there are no more bottles on the wall
while bottles > 0
puts "#{bottles} of beer on the wall. #{bottles} of beer on the wall."
bottles -= 1
puts "take one down and pass it around, #{bottles} of beer on the wall!"
puts ""
end
