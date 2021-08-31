# 自分の得意な言語で
# Let's チャレンジ！！
tellphone = gets.chomp.gsub(/-/, "")
number = tellphone.chars.map(&:to_i)

total_number = 0
dial_distance = 2

number.each do |n|
  case n
  when 1
    total_number += 3
  when 2
    total_number += 4
  when 3
    total_number += 5
  when 4
    total_number += 6
  when 5
    total_number += 7
  when 6
    total_number += 8 
  when 7
    total_number += 9
  when 8
    total_number += 10
  when 9
    total_number += 11
  when 0
    total_number += 12
  end
end

puts total_number * 2