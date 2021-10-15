row, cols = gets.chomp.split(' ').map(&:to_i)

map = []
row.times { map << gets.chomp.split('')}

map.each_with_index do |vals, y|
  vals.each_with_index do |val, x|
    puts("#{y} #{x}") if x == '#'
  end
end