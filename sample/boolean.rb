#nill,falseは偽になる。
#以下がnilがfalseであるという特性を活かしたコード
find_data = nil

data = find_data
if data
  puts 'データあります'
else
  puts 'データありません。'
end

t1 = true
t2 = false
puts t1 && t2 #=> false
puts t1 || t2 #=> true

# 真偽値の反転、文字列にも仕様で記す。
t3 = 30
puts !t3

#変数に格納することができる。
hoge =
  if t3 == 30
    'そうだよ'
  elsif t3 == 40
    '違うよ'
  else
    puts hoge
  end

puts hoge

#後置ifとして、修飾子として使用することができる。
mounthly_point = 7
special_day = 1

mounthly_point *= 5 if special_day == 1
puts mounthly_point