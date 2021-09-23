
test = 0

(1..64).each do |element|
  test =+ test + (element ** 4)
end

puts test