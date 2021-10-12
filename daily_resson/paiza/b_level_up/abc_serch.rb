# 配列を作成して、全検索。
# パフォーマンス良くない
x = gets.chomp
y = gets.chomp
c = gets.chomp

ary = [*x..y]
puts ary.include?(c)

# rangeで判定するので、読み込みが早い
x = gets.chomp.ord
y = gets.chomp.ord
c = gets.chomp.ord

puts x <= c && y >= c
