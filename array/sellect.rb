#select,find_all
#要素を条件で絞り込み、真の要素だけを返すことができる。

numbers = [1,2,3,4,5,6,7,8]

even_numbers = numbers.select {|n| n.even?}
puts even_numbers

#rejectは偽のときに仕様できる。
