# 二次元配列で扱う必要はなかった。。
pins = []
4.times { pins << gets.chomp.split(' ').map(&:to_i) }

total_count = 0
index_count = 0
action_flag = false

pins.reverse.each do |value|
  value.reverse.each do |val, index|
    index_count += 1
    total_count += 1 if val == 1

    if val == 1 && action_flag == false
      action_flag = true
      puts index_count
    end
  end
end

puts total_count
