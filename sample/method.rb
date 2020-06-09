#最後に評価された行が関数の返り値になります。
#基本使用せずに関数の処理を脱出するときに使用する。
#からの()は不要
def greeting(countroy)

  if countroy == 'japan'
    puts '今日は'
  elsif countroy == 'us'
    puts 'hello'
  else
    puts 'jyanbo'
  end
  
end

greeting('uk')