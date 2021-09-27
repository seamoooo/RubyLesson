times_conut = gets.to_i

employee = []

times_conut.times do 
 employee << gets.chomp.split(' ').map(&:to_s)
end

employee.each do |ary|
  ary[1] = ary[1].to_i + 1
  
  puts ary.join(' ')
end