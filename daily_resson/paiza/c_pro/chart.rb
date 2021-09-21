chart_day = gets.to_i

chart_data = []
chart_day.times { chart_data << gets.chomp.split(" ").map(&:to_i) }


start_price = chart_data[0][0]
end_price = 0
height_price = 0
row_price = chart_data[0][0]

chart_data.each_with_index do |ary, index|
  height_price = ary.max if ary.max > height_price
  row_price = ary.min if ary.min < row_price
  start_price = ary[0] if index == 0
  end_price = ary[1] if index == (chart_day - 1)
end

chart_array = [start_price, end_price, height_price, row_price]

puts chart_array.join(' ')