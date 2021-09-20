# 行数 H
# 列数 W
# 欠片の糖度あり a

# 振り分け条件
# 行(横)ごとの分けた際の和が、等しくなる
# 左端から連続した値をアリスが、残りはボブがもらう

choco_sel = gets.split(' ').map(&:to_i)
row = choco_sel[0]
column = choco_sel[1]

answer_yes = 'Yes'
answer_no = 'No'

sugar_content = []
row.times { sugar_content << gets.chomp.split(' ').map(&:to_i)}

# 総和が奇数の場合は、retun
row_sugar_content = sugar_content.map { |item|
  return puts answer_no if (item.sum).odd?
  item.sum
}

# 左から足して、総和を超える場合はNoを出力
def check_choco_separeate?(sugar_content, row_sugar_content)
  sugar_content.each_with_index do |row, index|
   sum_row = 0
   row.each_with_index do |sel, indexes|
      sum_row += sel
      if sum_row == (row_sugar_content[index] / 2)
        return true
      end
  
      if sum_row > (row_sugar_content[index] / 2)
        return false
      end
   end
  end
end

puts answer_no if check_choco_separeate?(sugar_content, row_sugar_content) == false

alice_choco_index = []
sugar_content.each_with_index do |row, index|
  sum_row = 0

  row.each_with_index do |sel, indexes|
     sum_row += sel
     if sum_row == (row_sugar_content[index] / 2)
      alice_choco_index << indexes
     end
  end
end

puts answer_yes
