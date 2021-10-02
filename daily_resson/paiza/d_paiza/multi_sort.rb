n = gets.to_i

num = []
n.times { num << gets.split(' ').map(&:to_i) }

num.sort! do |a, b|
  [b[0], b[1] ] <=> [a[0], a[1]]
end

num.each do |val|
 puts val.join(' ')
end

# https://qiita.com/zom/items/b22510a86ef63b18af00