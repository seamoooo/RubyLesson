# 得点70点 ケース4つ失敗

# 台風の目と台風の暴風域
strom_info = gets.split(' ').map(&:to_i)

# 対象人数
confirmations = gets.to_i

# 対象座標
coordinates = []
while coordinate = gets
    coordinates << coordinate.chomp.split(' ').map(&:to_i)
end

storm_eye_redius = strom_info[2] ** 2
storm_redius = strom_info[3] ** 2
center_x = strom_info[0]
center_y = strom_info[1]

for coordinate in coordinates do
  calc_radius = (coordinate[0] - center_x) **2 + (coordinate[1] - center_y) **2
  if calc_radius > storm_eye_redius && calc_radius < storm_redius
    puts 'yes'
  else
    puts 'no'
  end
end