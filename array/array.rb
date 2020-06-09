#配列はArrayクラスのオブジェクトですよ
a = [1,2,5,9]
puts a.size

a << 9
a[5] = 30
puts a

b = ['string']
puts b
#多重代入
d,c = ['string','hoge']
puts d


numbers = [1,2,4,5]
sum = 0

numbers.each do |n|
  #三項演算子
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end

#{}で下記のような記載方法も可能
#1行でまとめたい時は下記のように記載する。
numbers.each{|n| sum +=n} 

#スコープ外のsum_valueは参照できないので
#sumを定義する。
puts sum