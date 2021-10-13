# 斜めの確認
row = 5
col = 5
users = %w[X O]
results = []

winner = "D"
col.times {results << gets.chomp.split('')}

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