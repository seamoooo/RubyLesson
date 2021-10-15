h, w = gets.split(' ').map(&:to_i)

border = []
h.times { border << gets.chomp.split('')}


# 複数条件のifがある場合、下記のように連続技みたいに分岐させると確実に
# 見通しが悪くなって、負債化する
border.each_with_index do |vals, y|
  vals.each_index do |x|
    # 負債化まっしぐらコード、作成した人にしかわからん
    if y == 0 || border[y - 1][x] == "#"
      if y == (h - 1) || border[y + 1][x] == "#"
        if x == 0 || vals[x - 1] == "#"
          zahyou.push([y, x]) if x == w - 1 || row[x + 1] == '#'
        end
      end
    end
  end
end

# 複数条件がある場合、下記のように初期値でフラグを設定し、
# 分岐の条件に使用する
board.each_with_index do |row, y|
  row.each_index do |x|
    flag_row = false
    flag_clm = false

    # 横の条件一致
    if x == 0 || row[x - 1] == '#'
      flag_row = true if x == w - 1 || row[x + 1] == '#'
    end

    # 縦の条件一致
    if y == 0 || board[y - 1][x] == '#'
      flag_clm = true if y == h - 1 || board[y + 1][x] == '#'
    end

    # 両方一致した場合にputs、デバックも楽
    puts y.to_s + ' ' + x.to_s if flag_row && flag_clm
  end
end
