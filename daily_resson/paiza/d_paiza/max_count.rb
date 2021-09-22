try_times = gets.to_i

ary = []

try_times.times do 
  ary << gets.to_i
end

puts ary.max


# timesはindexもとることができる
n = gets.to_i
# arrはnil
arr = Array.new(n) 
n.times { |i| arr[i] = gets.to_i }

puts arr.max