num = gets.to_i

blood_type = {}

num.times do
  str = gets.chomp.split(' ')
  blood_type[str[0]] = str[1]
end

blood_type.each do |key, val|
   puts "#{key} #{val}" 
end