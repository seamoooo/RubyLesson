n = gets.chomp.to_i
heavy = gets.chomp.split(' ').map(&:to_i)

output = 0

for i in 0..(n - 1)
  total_count = 0
  scores = gets.chomp.split(' ').map(&:to_i)

  for j in 0..4
     total_count += scores[j] * heavy[j]
  end
   output == total_count if total_count > output
end

pp total_count