#4-1-3インスタンス変数へのアクセス
class Ruler
  attr_accessor :length
end

ruler = Ruler.new

puts ruler.length
ruler.length = 30
puts ruler.length

#4-1-4クラスメソッド
class Ruler
  attr_accessor :length

  def self.pair
    [new, new]
  end

  #このような書き方もOK
  #インスタンス、メソッドとの区別が付きやすい
  #クラスメソッドをまとめて定義できること
  class << self
    def hoge
     puts %w(old old)
    end
  end
end

puts Ruler.pair
puts Ruler.hoge

