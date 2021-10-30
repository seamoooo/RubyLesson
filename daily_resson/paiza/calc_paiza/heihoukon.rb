n = gets.chomp.to_i

flag = false

for b in 1..n
  for c in 1..(n - b)
    a = n - b - c
    flag = true if a ** 2 == b ** 2 + c ** 2
  end
end

flag ? puts("YES") : puts("NO")
