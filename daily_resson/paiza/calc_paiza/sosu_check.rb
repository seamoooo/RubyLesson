num = gets.to_i

def prime?(num)
 return true if num == 1

 sqrt_num = Math.sqrt(num).floor
 2.upto(sqrt_num) { |i|
   if num % i == 0
       return false
   end
 }
 return true
end

prime?(num) ? (puts "YES") : (puts "NO")


# 個数を求める
n = gets.chomp.to_i
count = 0
for i in 2..n
  is_prime = true
  for j in 2..(i ** 0.5)
    if i % j == 0
      is_prime = false
    end
  end
  count += 1 if is_prime
end

puts count