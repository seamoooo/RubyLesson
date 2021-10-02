# 降順
n = gets.to_i

num = []
n.times { num << gets.to_i }

puts (num.sort do |a, b|
  b <=> a
end)

# 昇順
n = gets.to_i

num = []
n.times { num << gets.to_i }

puts num.sort
