num = gets.chomp.to_i
n = []
num.times { n.push(gets.chomp.to_i)}

def sum(n)
  return 0 if n.empty? #配列が空のときは終了
  top = n.shift
  top + sum(n)
end

p sum(n)
