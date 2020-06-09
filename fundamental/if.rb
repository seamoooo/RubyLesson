status = 'error'
if status != 'ok'
  '異常あり'
end

#三項演算子
#式？　真だった場合の処理: 偽だった場合の処理
#普通のif文
n = 11
if n > 10
  '10よりおっきいっしょ'
else
  '10以下'
end

#ruby
n > 10 ? '10より大きい' : '10以下'
message = n > 10 ? '10より大きい' : '10以下'

puts message