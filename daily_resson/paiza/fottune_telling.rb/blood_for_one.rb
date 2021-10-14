people = gets.chomp
num = gets.to_i

blood_type = {}

num.times do
  str = gets.chomp.split(' ')
  blood_type[str[0]] = str[1]
end

puts "#{people} #{blood_type[people]}"
