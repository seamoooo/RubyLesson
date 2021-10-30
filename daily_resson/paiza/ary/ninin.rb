n = gets.chomp.to_i
height = []

for i in 1..n
  height << gets.chomp.to_i
end

output = [0, 0]
count = 101


for i in 0..(n - 1)
 for j in (i + 1)..(n - 1)
  # マイナスが発生し得るので、絶対値比較
  if (height[i] - height[j]).abs < count 
    count = (height[i] - height[j]).abs
    output[0] = height[i]
    output[1] = height[j]
  end
 end
end

output.sort.each do |val|
 pp val
end