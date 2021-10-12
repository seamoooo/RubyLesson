num = gets.to_i

obj = {}

num.times do
  val = gets.chomp.split(' ')
  obj[val[0].to_sym] = val[1]
end

obj.each do |key,val|
  puts val
end