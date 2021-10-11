n = gets.to_i
str = gets.chomp

fir_str = str.slice(n -1)
sec_str = str.slice(n)

puts "#{fir_str} #{sec_str}" if sec_str != nil