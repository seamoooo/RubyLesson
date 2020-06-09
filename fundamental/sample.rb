#変数はスネークケースで書く
special_number = 30

# 全てがオブジェクト
# オブジェクト.メソッド(引数,引数)
# ()省略可能　
puts special_number.to_s

first_greeting = "はじ目まして\n田中くん\n#{special_number}年生まれなんだって" 
last_greeting = 'もう会わないね\n田中くん'
puts first_greeting
puts last_greeting

puts first_greeting == last_greeting #=> false
puts first_greeting != last_greeting #=> true
