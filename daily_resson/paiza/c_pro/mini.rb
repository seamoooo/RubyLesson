n = 10_000

while true
  break if n % 13 == 0
  n +=1
end

while true
  if n % 13 == 0
    break
  end
  n += 1
end
puts n