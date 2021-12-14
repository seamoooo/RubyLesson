# 式展開は" "で
puts "hogehoge #{1 + 1}"

# 改行を防ぐ
test = "国語90点\
数学50点"

# 改行あり
test2 = <<~EOS
  国語90点
  数学50点
EOS

puts test2

st = %w(heho, hoho, hoee)
# %iはシンボルが生成可能
sym = %i(heho, hoho, hoee)

pp st,sym