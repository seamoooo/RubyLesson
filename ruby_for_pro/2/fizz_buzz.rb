n = gets.chomp.to_i

def fizz_buzz(num:)
  return puts num.to_i if num == 0
  if num % 15 == 0
    puts "fizz buzz"
  elsif num % 5 == 0 
    puts "Buzz"
  elsif num % 3 == 0
    puts"fizz"
  else
    pp num.to_s
  end
end

n.times { |number| fizz_buzz(num: number) }
# https://qiita.com/mogulla3/items/46bb876391be07921743

doc = <<EOS
test
tesy
yesy
EOS