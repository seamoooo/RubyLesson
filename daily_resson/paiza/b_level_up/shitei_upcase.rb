num = gets.chomp.split(' ').map(&:to_i)
st = gets.chomp

(1..(st.length)).each do |i|
  if num[0] <= i && i<= num[1]
    print st[i - 1].upcase
  else
    print st[i - 1]
  end
end

print "\n"