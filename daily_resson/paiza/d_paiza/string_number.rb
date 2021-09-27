# test = "1111" 
# test[0]で先頭から数えて、n番目の配列を取得できる
numbers_ary = gets.split('').map(&:to_i)

a = numbers_ary[0] + numbers_ary[3]
b = numbers_ary[1] + numbers_ary[2]

puts a.to_s + b.to_s
