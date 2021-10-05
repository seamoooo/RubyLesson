people_count = gets.to_i

property = Array.new(people_count)

people_count.times { |i| property[i] = gets.chomp.split(' ').map(&:to_i)}

property.sort! do |a , b|
  [b[1], b[0]] <=> [a[1], a[0]] 
end

property.each do |val|
  puts val.join(' ')
end