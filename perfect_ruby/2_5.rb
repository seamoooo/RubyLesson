class Stationery

  def hello
    puts 'extend Stationery'
  end
end


class Ruler < Stationery
  attr_accessor :length

  # クラス変数
  @@cvar = 'hello my class variable'

  def initialize(length)
    @length = length
  end

  # クラスメソッド
  def self.pair
    [Ruler.new, Ruler.new]
  end
end

ruler = Ruler.new('30')

puts ruler.hello