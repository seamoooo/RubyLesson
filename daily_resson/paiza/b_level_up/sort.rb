n = gets.chomp.to_i
ary = []

n.times do |i|
 ary << gets.chomp.split(' ')
 ary[i][1] = ary[i][1].to_i
end

ary.sort! do |a, b|
 a[1] <=> b[1] 
end

ary.each { |val| puts val[0] }

# オブジェクトバージョン
num = gets.chomp.to_i
ary = {}

# idチックにして、文字列に数字ふる
(1..num).each do
  line = gets.chomp.split(' ')
  ary[line[1].to_i] = line[0]
end

array = ary.sort!

# sortするとarrayに変換されるので、sort!は避けたほうがよい
array.each { |val| puts ele[1] }