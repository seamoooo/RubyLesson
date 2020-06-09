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

#詳しく
#引数のデフォルト値
#def メソッド(引数1 == デフォルト値, 引数2 = デフォルト値2)
def second_greeting(countroy = 'japan')
  if countroy == 'japan'
    puts '久しぶり'
  else
    puts 'hello'
  end
end

puts second_greeting

#他のメソッドの戻り値をデフォルト指定することができる
def foo(time = Time.now, message = bar)
  puts "time:#{time}, message:#{message}"
end

def bar
  'bar'
end

puts foo

#?で終わるメソッドは真偽を返すメソッドになっている。
abc = 'abc'
numbar = 11

puts abc.empty? #=> false
puts numbar.even? #=>false
puts abc.nil? #=>false

#!で終わるメソッドは使用する時は注意が必要という意味
#important!みたいな感じ

a = 'ruby'
hoge = a.upcase
puts a
puts hoge

#参照元が変化してしまう.破壊的メソッド
a.upcase!
puts a

#メソッドに対しては？、！は使用できるが変数名には使用できないので、注意

