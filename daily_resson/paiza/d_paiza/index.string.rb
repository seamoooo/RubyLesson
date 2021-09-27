# 文字列検索メソッド
# include? => boolean
# index => number

# 配列検索
# select { || ブロック処理 }
# 組み合わせ　合致したものを返す
# fruits.select { |item| item.include?("apple") }\

index_string = gets.to_s

gets.to_s.include?(index_string) ? (puts 'YES') : (puts 'NO')