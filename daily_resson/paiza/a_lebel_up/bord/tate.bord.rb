h, w = gets.split(' ').map(&:to_i)

border = []
h.times { border << gets.chomp.split('')}

# eachはHashだけしか、key,valを取得できない
border.each_with_index do |vals, y|
  vals.each_index do |x|
    if y == 0 || border[y - 1][x] == "#"
      if y == (h - 1) || border[y + 1][x] == "#"
        if x == 0 || vals[x - 1] == "#"
          zahyou.push([y, x]) if x == w - 1 || row[x + 1] == '#'
        end
      end
    end
  end
end
