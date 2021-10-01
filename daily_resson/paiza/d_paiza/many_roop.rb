a_count = gets.to_i

a_ary = []
a_count.times { a_ary << gets.chomp.to_s }

b_count = gets.to_i
b_ary = []

b_count.times { b_ary << gets.chomp.to_s }

a_ary.each do |a_val|
  b_ary.each do |b_val|
    b_val.include?("#{a_val}") ? (puts "YES") : (puts "NO")
  end
end

inc_count = gets.to_i

inc_count.times do 
  if gets.to_i == 7
    puts "YES"
    exit
  end
end

puts "NO"

n = gets.to_i

a = []

n.times { |i| a[i] = gets.to_i }

k = gets.to_i

n.times do |i|
 if a[i] == k
   puts i + 1
   exit
 end
end