n = gets.to_i

damage = {}

n.times do
  damage[gets.chomp] = 0
end

m = gets.to_i

m.times do
  name, damage_count = gets.chomp.split(' ')
  damage[name] += damage_count.to_i
end

puts damage[gets.chomp]

