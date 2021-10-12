# ベタ打ちで拡張性に乏しい
str = gets.chomp.split('')

if str.count("O") == 5
   puts "O"
elsif str.count("X") == 5
   puts "X"
else
  puts "D"
end

# 事前に初期値を定義して、プレイヤーごとにカウントをするほうが理想
players = %w[O X]
st = gets.chomp.split('')

# デフォルト引き分け
result = "D"

players.each do |player|
  count = 0
  st.each {|el| count += 1 if player == el}
  result = player if count >= 5
end

puts result