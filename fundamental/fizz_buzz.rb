
def fizz_buzz(numbar)
  if numbar / 3 == 0
    puts 'fizz'
  elsif numbar / 5 == 0
    puts 'buzz'
  elsif numbar / 15 == 0
    puts 'fizz_buzz'
  else
  puts numbar.to_s
  end
end

puts fizz_buzz(47)       