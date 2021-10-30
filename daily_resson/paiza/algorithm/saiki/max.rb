n = gets.to_i

num = []
n.times { num << gets.chomp.to_i } 

def max(num)
   return num[0] if num.length == 1
   x = num.shift
   pp x
   y = max(num)
   pp y
   x > y ? x : y
end

p max(num)