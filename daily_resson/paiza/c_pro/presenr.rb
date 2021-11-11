#整数X番はA
#整数Y番はB
#当選AB A B N

n, x, y = gets.chomp.split(' ').map(&:to_i)

for i in 1..n
  if i % x == 0 && i % y == 0
    puts "AB"
  elsif i % x == 0
    puts "A"
  elsif i % y == 0
    puts "B"
  else
    puts "N"
  end
end