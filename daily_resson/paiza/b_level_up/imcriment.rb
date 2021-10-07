ary = [1, 3, 5, 6, 3, 2, 5, 23, 2]


# パターン1
sum = 0
ary.each do |val|
  sum += val
end

puts sum

# パターン2
# injectに初期値を設定するパターン
ary.inject(0) {|sum ,num| sum += num}


# パターン3
# injectをシンボルを使用していい感じに書くパターン
oputput = ary.inject(0, :+)


