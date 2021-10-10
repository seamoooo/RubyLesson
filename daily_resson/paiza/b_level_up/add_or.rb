n = gets.to_i

num_ary = []

n.times { num_ary << gets.chomp.split(' ').map(&:to_i) }

output = 0

num_ary.each do |val|
  if val[0] == val[1]
   add_num = val[0] * val[1]
  else
   add_num = val.inject(0, :+)
  end
  output += add_num
end

puts output
