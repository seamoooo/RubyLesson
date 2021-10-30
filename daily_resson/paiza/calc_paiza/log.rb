num = gets.chomp.to_i
count = 0

for i in 1..(num - 1)
  new = i
  while new % 2 == 0
    now /= 2
    count += 1
  end
end

# 一回計算してからだと処理が重くなるので、
# 上のように書く、約数ごとに2で割り切れるか確認する
for i in 1..(num - 1)
  num *= i
end

count = 0
while true do
  break if num % 2 != 0
  count += 1
  num /= 2
end

puts count

