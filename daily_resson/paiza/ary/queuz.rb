count = gets.chomp.to_i
queue_ary = []

count.times do
  instraction = gets.chomp.split(' ')

  if instraction[0] == "out"
    queue_ary.shift()
  else
    queue_ary.push(instraction[1])
  end
end

queue_ary.each do |val|
  puts val
end