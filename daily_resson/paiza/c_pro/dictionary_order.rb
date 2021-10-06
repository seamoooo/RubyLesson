n = gets.to_i

damage = {}

n.times do
  name = gets.chomp
  damage[name] = 0
end

m = gets.to_i

m.times do
  name, attack = gets.split(' ')
  damage[name] += attack.to_i
end

# sortはreturnが配列に変換されるので、to_hでもどす
# keyは単純にsort呼び出しで、降順はsort.reverse.to_h
# valueの並び変えるh.sort_by { |_, v| v }
sort_damage = damage.sort

pp sort_damage