num = gets.to_i

rank = {}

num.times do |i|
  ary = gets.chomp.split(' ')
  
  if rank.key?(ary[0])
    rank[ary[0]] += ary[1].to_i
  else
    rank[ary[0]] = ary[1].to_i
  end
end

# 実行回数を比較して、sort_byが望ましい
# sort_byでブロックごと渡して評価することができる
rank.sort_by { |_string, points| -points }

# sort!は{}で利用できない
rank_ary = rank.sort do |a , b|
 b[1] <=> a[1]
end

rank_ary.each do |val|
  puts val.join(' ')
end