key_pass = gets.to_s
input_pass = gets.to_s

def error
 puts 'NO'
 exit
end

puts error() if key_pass.length != input_pass.length
puts error() if key_pass === input_pass

key_pass.split(//).each { |ary|
  puts error() if !(input_pass.match?(/#{ary}/))
}

puts 'YES'