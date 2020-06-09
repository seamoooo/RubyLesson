#mapは各要素に対して、ブロックを再評価した結果を新しい配列にして返す。
#返り値は配列

#each doを使用した場合、返り値が配列じゃないので、配列の宣言をする必要があった
numbers = [1,2,3,5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
puts new_numbers

#mapは下記
number = [1,2,3,5]
new_number = number.map{|n| n * 10}
puts new_number