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

q