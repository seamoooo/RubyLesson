# 配列パターン
people_count = gets.to_i

people_data = Array.new(people_count)

people_count.times { |i| people_data[i] = gets.chomp.split(' ')}

request_name = gets.chomp.to_s

output = people_data.select {|i| i[0] == request_name }

output.each do |val|
  puts val[1]
end


# オブジェクトでキーで出力できるようにする
n = gets.to_i

properties = {}

n.times do
  s, a = gets.split(' ')
  properties[s] = a.to_i
end

s = gets
puts properties[s]