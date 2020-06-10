numbers = [1,2,3,4,5]

numbers.each do |n|
  #偶数であれば、中断して次の処理に進む
  #奇数じゃないかぎり、処理されない
  next if n.even?
  puts n
end