n, count = gets.chomp.split(' ').map(&:to_i)

ary = [*1..n]
pp ary

count.times do
  order, num1, num2 = gets.chomp.split(' ')

  if order == "swap"
    num1, num2 = num1.to_i, num2.to_i
    ary[num1 - 1], ary[num2 - 1] = ary[num2 - 1], ary[num1 - 1]
  elsif order == "reverse"
    ary.reverse!
  else
    ary.pop(ary.length - num1.to_i) if ary.length > num1.to_i
  end
end