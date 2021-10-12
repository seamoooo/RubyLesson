cols = 5
players = %w[D X]

results = []
cols.times { results << gets.chomp.split('')}

winner = "D"

players.each do |player|
  count = 0
  results
