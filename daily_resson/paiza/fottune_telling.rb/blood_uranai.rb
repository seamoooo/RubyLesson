blood_type = gets.chomp
num = gets.to_i

target = {}

num.times do
  str = gets.chomp.split(' ')
  target[str[0]] = str[1]
end

puts target[blood_type]