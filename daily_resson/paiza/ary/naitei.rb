n, k, m = gets.chomp.split(' ').map(&:to_i)

candidates = []

for i in 1..n
 candidates << gets.chomp.to_i
end

sort_candidates = candidates.sort do |a, b| 
  b <=> a
end

count = 0

for j in m..(n - 1)
  count += 1 if sort_candidates[j] >= k
end

pp count