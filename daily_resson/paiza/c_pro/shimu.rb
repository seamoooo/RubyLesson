h = gets.to_i

# 初期値二回目からはじめたら良いやん
paiza = [0,1,1]
monster = [0,1,1]

h -= 2
turn = 2

while true
  monster[0] = monster[1]
  monster[1] = monster[2]

  paiza[0] = paiza[1]
  paiza[1] = paiza[2]

  monster[2] = paiza[1] + paiza[0]
  paiza[2] = monster[1] * 2 + monster[0]

  h -= paiza[2]
  turn += 1

  # ==０はない
  break if h <= 0
end

puts turn