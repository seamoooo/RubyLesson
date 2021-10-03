n, m, k = gets.split(' ').map(&:to_i)

numbers = []
n.times do 
  numbers << gets.split(' ').select {|num| num.to_i == k}
end

numbers.each do |val|
  puts val.length
end