def greet(country = 'test')
  if country == 'japan'
    puts 'ok'
  else
    puts 'sonohoa'
  end
end

puts greet()

# 動的な値も設定可能デス。
def foo(time = Time.now, message = bar)
  puts "time: #{time} message #{message}"
end

def  bar
  "Bar"
end

foo

def point(x,y = x)
  puts "#{x} #{y}"
end