cols = 5
players = %w[O X]

results = []
cols.times { results << gets.chomp.split('')}

winner = "D"

results.each do |result|
  players.each do |player|
    winner = player if result.count(player) == cols
  end
end

puts winner


# 3重ループパターン

array = %w[O X]
result = 'D'

(1..5).each do
  string = gets.chomp.split('')

  array.each do |a|
    cnt = 0
    string.each { |s| cnt = cnt + 1 if s == a }
    result = a if cnt >= 5
  end
end

puts result