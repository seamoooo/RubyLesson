row, cols, num = gets.split(' ').map(&:to_i)
update_text = "#"

bord = []
cols.times { bord << gets.chomp.split('') }


num.times do
  str = gets.chomp.split(' ').map(&:to_i)
  bord[str[0]][str[1]] = update_text
end

bord.each do |val|
  puts val.join('')
end