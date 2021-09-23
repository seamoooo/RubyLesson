
test = (1..30000).select { |n| n.to_s.include?("3") || (n % 3) == 0 }.sum

puts test