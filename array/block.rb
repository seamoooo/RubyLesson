# with_indexメゾットを使用することで、
# 繰り返し処理をインデックスを表示する。
fruits = [1, 2, 3, 4, 5]
kome = [1, 2, 3, 4,]
fruits.each_with_index{|fruit, i| puts "#{i}: #{fruit}" }
kome.map.with_index{|fruit, i| puts "#{i}: #{fruit}" }

#配列がブロック引数で渡される場合
demensions = [
  [10,20],
  [30,40],
  [50,60],
]

areas = []

dimensions.each do |length,with|
  areas << length * with
end

puts areas

#配列の要素を受け取るブロック引数を()で囲むと、配列の要素を別々の引数として受け取ることができる
demensions.each_with_index do |(index,width),i|
  puts "length: #{index}, width: #{width}, i: #{i}"
end