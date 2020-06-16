numbers = ["hoge","hogs"]

numbers.map{ |s| s.upcase }

hoge = numbers.map(&:upcase)
puts hoge

#ブロック引数が1個だけである。
#ブロックの中で呼び出すメソッドには引数がない。
#ブロックの中では、ブロック引数に対してメソッドを1回呼び出す以外の処理がないこと

range = 1..100
puts range.include?(19) 