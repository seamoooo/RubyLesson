h, w = gets.split.map(&:to_i)
bord = h.times.map { gets.split('')}

bord.each_with_index do |row, y|
  row.each_index do |x|
    if x == 0 || row[x - 1] == "#"
      puts y.to_s + ' ' + to.to_s if x == w -1 || row[x - 1] == "#"
     end
  end
end

# 連想配列で扱っても良い
h, w = gets.split(' ').map(&:to_i)

bord = []
h.times { bord << gets.chomp.split('')}

bord.each_with_index do |row, y|
  row.each_index do |x|
    if x == 0 || row[x - 1] == "#"
      puts y.to_s + ' ' + x.to_s if x == w - 1 || row[x + 1] == '#'
     end
  end
end