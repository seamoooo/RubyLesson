num, sum, delete = gets.chomp.split(' ').map(&:to_i)

sheet = []
for i in 1..sum
  sheet << gets.chomp.to_i
end
sheet.shift(delete)

output = []

for i in sheet
 if !(output.include?(i))
  output.push(i)
  puts i
 end
end