class Book
  attr_reader :count

  def initialize(count:)
    @count = count
  end
end

class Books
  def initialize(count:)
    @count = count
  end

  def count
    @count
  end

  # クラメソ
  def self.category
    @category = '冒険'
  end
end

puts Books.new(count: 30).count
puts Book.new(count: 30).count
puts Books.category