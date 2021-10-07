n = gets.to_i

num = []
n.times { num << gets.chomp.to_i }

pp num

outpout = 0
num.each do |val|
  outpout += val if val >= 5
end

puts outpout

# 配列に入れなくてもいける
loop = gets.chomp.to_i
ans = 0

(1..loop),each do |i|
  num = gets.chomp.to_i

  ans += num if num >= 5
end

puts ans