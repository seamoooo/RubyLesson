ary = ["HND", "NRT", "KIX", "NGO", "NGO"]

puts array.size != array.uniq.size

# 全探索の場合、2重ループにして、ary1に対して、ary2の要素のすべてで
# 合致するものがあるか調べる

array = %w[HND NRT KIX NGO NGO]

is_duplicate = false

array.size.times do |i|
  array.size.times do |j|
    is_duplicate = true if i != j and array[i] == array[j]
  end
end