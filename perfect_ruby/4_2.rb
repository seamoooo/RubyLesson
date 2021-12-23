module Greetable
  def greet_to(name)
    puts "hello #{name}"
  end
end

class Alice
  include Greetable

  def greet_to(name)
    super
    puts 'オーバーライドもできるよ'
  end
end

Alice.new.greet_to('bob')
