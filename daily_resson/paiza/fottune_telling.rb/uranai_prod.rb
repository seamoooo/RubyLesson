num1 = gets.to_i

people = {}
results = {}

num1.times do
  str = gets.chomp.split(' ')
  people[str[0]] = str[1]
end

num2 = gets.to_i

num2.times do
  str = gets.chomp.split(' ')
  results[str[0]] = str[1]
end

people.each do |key, val|
  puts "#{key} #{results[val]}"
end