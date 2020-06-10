#returnを使用するとメソッド自体から脱出してします。
#処理を一個抜ける、繰り返しが入れ子になっている場合は一番内側が抜ける
numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  break if n == 5 
end


