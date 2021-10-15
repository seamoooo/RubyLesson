h, w = gets.split(' ').map(&:to_i)

border = []
h.times { border << gets.split(' ')}

# eachはHashだけしか、key,valを取得できない
border.each_with_index do |vals, y|
  vals.each_index do |x|
    if y == 0 || border[y - 1][x] == "#"
      puts("#{y} #{x}") if y == (h - 1) || border[y - 1][x]
    end
  end
end