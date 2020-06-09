numbers = [1,2,3,4,5]

numbers.each do |n|
  sum = n 
end

numbers.delete_if do |n|
  n.odd?
end

puts numbers
