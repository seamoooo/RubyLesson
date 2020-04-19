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

puts person_9th&.capitalize　#nill
puts person_9th.capitalize　#error