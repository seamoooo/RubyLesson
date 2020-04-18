#メソッド1.2やトップレベル(クラスとモジュールの定義の外)で例外処理を実装
#raiseとbeginの基本的な書き方

#raise 'error!' #Runtimeerror
#raise StandardError, 'error' #第一引数にエラークラスをしていすることができる。

#try catch的なものが、begin
# begin
#     do_proces #例外が発生する明らかな処理
# rescue => e　#rescue節で補足し、変数eに格納する。
#     puts "Error occurred (#{e.class})"
# end

#begin end で複数の処理が必要になる場合、rescue節で複数記述することができる。
#ensureで例外の有無に関わらず、処理を実行することができる。

begin
    raise StandardError, 'error! しっかりしてくれよ'
rescue => e
    puts e.message
    puts e.class
    puts e.backtrace
ensure
    puts 'これだけは実行しておきたい'
end

