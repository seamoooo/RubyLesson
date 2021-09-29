# i = gets.to_i - 1
# num = gets.split(' ').map(&:to_i)

# count = 0

# for int in 0..i do
#   count += num[int] / 3 if num[int] % 3 == 0
# end

# puts count

n = gets.to_i
a = gets.split(' ').select { |n| n.to_i % 3 == 0 }

puts a.length