# 5回実行するとエラーを発生　retry
begin
  failed ||= 0
  puts 'trying...'

  #例外処理...
rescue => exception
  failed += 1

  retry if failed < 5
end