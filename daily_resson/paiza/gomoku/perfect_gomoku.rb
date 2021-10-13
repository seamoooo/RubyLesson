users = %w[O X]
moku_count = 5

results = []
winner = "D"

# ボードの初期化
moku_count.times { results << gets.chomp.split('') }

# 横ちぇっく
users.each do |user|
  results.each do |result|
    winner = user if result.count(user) == 5
  end
end

# 縦チェック　行列入れ替え
transpose_results = results.transpose

users.each do |user|
  transpose_results.each do |result|
    winner = user if result.count(user) == 5
  end
end

# ななめチェック
users.each do |user|
  count1 = 0
  count2 = 0

  results.each_with_index do |val, key|
      count1 += 1 if user == val[key]
      count2 += 1 if user == val[val.length - 1 - key]
  end
  
  winner = user if count1 >= 5 || count2 >= 5
end

puts winner