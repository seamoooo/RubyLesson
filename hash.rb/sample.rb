hoge = {}.class
puts hoge#=>Hash


currencies = {
  'japan'=> 'yen',
  'us' => 'dollar',
  'india'=> 'rupee'
}

# 追加の時は[]
currencies['italy'] = 'euro'
puts currencies

#繰り返し処理
currencies.each do |key, value|
  puts "#{key}: #{value}"
end

current_currencies = {
  'japan'=> 'yen',
  'us' => 'dollar',
  'india'=> 'rupee'
}

#同じキーと値をもつhashかを確認する
puts currencies == currencies

