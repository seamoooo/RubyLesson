n = gets.to_i

boal_count = []
n.times { boal_count << gets.chomp.to_i }

m = gets.to_i

m.times do |i|
  a, b, x = gets.chomp.split(' ').map(&:to_i)

  a -= 1
  b -= 1

  # aがボール渡す数より小さいとき
  if x > boal_count[a]
    boal_count[b] += boal_count[a]
    boal_count[a] = 0
  else
    boal_count[b] += x
    boal_count[a] -= xs
  end
end

boal_count.each {|val| (puts val)}