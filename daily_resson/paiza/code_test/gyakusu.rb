num = []
sum = 0
count = 0
while sum <= 10
  count += 1
  reciprocal = 1.0/count
  num << reciprocal
  sum = num.sum
end
puts num.length