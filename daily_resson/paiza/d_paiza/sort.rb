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


n = gets.to_i

num = []
n.times { num << gets.split(' ').map(&:to_i) 

num.sort do |a, b|
  [a[0], b[1]] <=> [a[0], a[1]]
end

puts num