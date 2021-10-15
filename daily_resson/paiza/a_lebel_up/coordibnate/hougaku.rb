y, x, n = gets.chomp.split(' ').map(&:to_i)
coordinate = [0,0]

n.times do
  direction = gets.chomp
  case direction
    when 'N' then
      coordinate[0] -= 1

    when 'E' then
      coordinate[1] += 1

    when 'S' then
      coordinate[0] += 1

    when 'W' then
      coordinate[1] -= 1
  end
  puts coordinate.join(" ")
end

# key,valで初期値を持たせるほうが計算量が少なくて済む
# 上記の例だと毎回4回if分岐することになる。
y, x, n = gets.split.map(&:to_i)

move = { N: [-1, 0], S: [1, 0], E: [0, 1], W: [0, -1] }

n.times do
  d = gets.chomp
  y += move[d.to_sym][0]
  x += move[d.to_sym][1]

  puts y.to_s + ' ' + x.to_s
end

