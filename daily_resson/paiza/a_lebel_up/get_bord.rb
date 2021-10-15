row, cols, num = gets.split(' ').map(&:to_i)

board_st = []
cols.times { board_st << gets.chomp.split('')}

num.times do
  coordinate = gets.split(' ').map(&:to_i)
  puts board_st[coordinate[0]][coordinate[1]]
end

# 　多次元配列にしなくても下記で、文字列[num]アクセスすればよい
board = h.times.map { gets.chomp }