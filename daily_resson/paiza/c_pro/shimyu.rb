n = gets.to_i
a, b = gets.split(' ').map(&:to_i)

paiza, kirishima = 1, 1
paiza_length = 0

while true
  # パイザの晩
  kirishima += paiza * a
  paiza_length += 1

  break if kirishima > n
  # 霧島の番
  paiza += kirishima % b
end

puts paiza_length