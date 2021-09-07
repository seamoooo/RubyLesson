# hit_number = [1, 2, 3, 4, 5,6]
# number_count = 3
# numbers = [[1, 5, 4, 2, 3, 6],[9,6, 2, 7, 1, 5],[32,9,87,33,41,60]]

hit_number = gets.chomp.split(' ')
number_count = gets.to_i
numbers = []
number_count.times { number << gets.chomp.split(' ') }

numbers.each do |item|
  count = 0
  item.each do |number|
    count += 1 if hit_number.include?(number)
  end
  puts count
end