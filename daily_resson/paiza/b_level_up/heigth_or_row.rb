ary = [4, 0, 5, -1, 3, 10, 6, -8]

n = 0

ary.each do |val|
  n += val if val > 5 
end

puts n