# N = gets.to_s
# G = gets.to_s
# ary = readlines.map(&:to_i)


# 文字列の数
N = 3 
# 抽出文字時列
G = "paiza"
logs = ["paizaonlinehackathon"]

filter_logs = logs.select { |log| log.match?(/#{G}/) }
filter_logs.empty? ? (puts "None") : (puts filter_logs)
