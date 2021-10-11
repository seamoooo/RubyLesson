ary = ["HND", "NRT", "KIX", "NGO", "NGO", "NGO", "NGO", "NGO"]


val = ary.select { |val| ary.count(val) > 1}.uniq

count = 0

val.each do |el|
  count += ary.count(el)
end

puts count

# 下記のような形でkey,valで値を保持したほうが、データの再利用性が高い
# 別解法 {"HND" => 1, "NRT" => 1, "KIX" => 1, "NGO" => 5}
array = %w[HND NRT KIX NGO NGO NGO NGO NGO]
count = {}

array.each do |el|
  if count[el]
    count[el] = count[el] + 1
  else
    count[el] = 1
  end
end

count.each {|key, val| puts val if val != 1å}