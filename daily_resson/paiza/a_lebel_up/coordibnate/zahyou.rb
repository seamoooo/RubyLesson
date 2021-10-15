
# 仕様が複雑になった際はちゃんとドキュメントを読み込んで、理解してから開始する
# y と x だけ整数に変換する
y, x, now = gets.split.map.with_index { |val, i| i != 2 ? val.to_i : val }
d = gets.chomp

d == 'L' ? lr = -1 : lr = 1

if now == 'N'
  x += lr
elsif now == 'S'
  x -= lr
elsif now == 'E'
  y += lr
elsif now == 'W'
  y -= lr
end

puts y.to_s + ' ' + x.to_s