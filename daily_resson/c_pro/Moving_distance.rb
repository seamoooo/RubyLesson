n = readlines.map(&:to_i)
current_floor = 1
mode_distance = 0

n.each do |n|
 mode_distance += (current_floor - n).abs
 current_floor = n
end

puts mode_distance