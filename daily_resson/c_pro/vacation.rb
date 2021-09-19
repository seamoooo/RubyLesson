# menbers = get.to_i

# date = []
# menbers.times { date << get.chomp.split(' ').map(&:to_s)}

date = [[1,10],[2,9],[4,7],[3,13],[5,6],[1,6],[2,8],[4,5],[4,7],[3,15]]

data_range = []

date.map do |obj|
  if date[0][0] > obj[1] || date[0][1] < obj[0]
    puts "NG"
    return
  end
end

# かぶらない
# 16 > test[1]
# または
# 19 < test[0]

puts "OK"