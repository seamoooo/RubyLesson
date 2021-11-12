n = gets.chomp.to_i

mountain = []
top_mountaion = []

n.times {mountain << gets.chomp.split(' ').map(&:to_i)}

mountain.each_with_index do |values, index|
  values.each_with_index do |val, i|
    right = !(mountain[index][i + 1].nil?) && i + 1 <= (n - 1)
    left = !(mountain[index][i - 1].nil?) && i - 1 >= 0
    up = !(mountain[index - 1][i].nil?) && index - 1 >= 0
    down = !(mountain[index + 1][i].nil?) && index + 1 <= (n - 1)

    top_mountaion.push(val) if right && left && up && down
  end
end

top_mountaion_sort = top_mountaion.sort.reverse
top_mountaion_sort.each { |val| puts val }


