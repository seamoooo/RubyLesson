#レシーバと括弧、引数のないメソッドよびだしは、
#同じ名前おローカル変数と区別がつかない
sweet = 'honey'

def sweet
    'salt'
end

puts sweet # => honey
puts sweet() # => salt

#safe navigation operator
#メソッド呼び出しの際に、返り値がnillであれば、なにもせずにnillを返してメソッドを実行する

people = %w(alice bob carol)

person_0th = people[0] #=>alice
person_9th = people[9] #=>nill

#capitalize 先頭を大文字変換する
puts person_0th&.capitalize #=>Alice
puts person_0th.capitalize #=>Alice 

puts person_9th&.capitalize　#nill エラーが発生せずにnillを返す
#puts person_9th.capitalize　#error

#メソッドの定義は基本的にスネークケースで定義
#3-5-5返り値 引数が偽だった場合に偽を返す

def greet(recipient)
  return false unless recipient #=> false
  "Hi, #{recipient.capitalize}" 
end

puts greet('alice')
puts greet(nil)

#デフォルト値が設定されている仮引数を省略可能な仮引数とよぶ
#メソッド呼び出し時に引数が設定されなかった場合は、デフォルト値が呼び出される
#途中の引数は省略できない。
#複数記述可能
def greet(name, message = 'Hi')
  puts "#{message}, #{name}."
end

greet 'Ruby'
greet 'Ruby','hello'
greet 'Ruby',nil#引数のデフォルト値が優先される

#可変長引数　= 任意の数の引数を配列として受け取れることができる
#仮引数の頭に*をつけると任意の数の引数を配列として受け取れるようになる。
def greet (name, *message)
  message.each do |message|
    puts "#{message}, #{name}."
  end
end

greet 'Ruby','こんにちは','hello'
#配列の展開　配列のメソッド呼び出しの引数リストとして渡したい場合に便利
#呼び出し3,仮引数が3　配列の展開によって、複数の引数として展開される
def greet_twice(name, first_name, second_message)
  puts "#{first_name}, #{name}"
  puts "#{second_message}, #{name}"
end

greetings = %w(hello aloha)
greet_twice 'Ruby', *greetings

def block_sample
  puts 'sutand up'
  yield if block_given?　#nilの場合エラーになるので、if block_given?つきで呼び出す
  puts 'sit down'
end

#block_sampleメソッド呼び出しで、ブロックつきで呼び出すと、
#yieldが実行される際に、ブロック内が実装される
block_sample do
  puts 'work'
end

#next,breakとうのジャンプ構文を使用すると呼び出し元に変える
