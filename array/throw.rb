#例外処理はraise,catchで使用する
#大域脱出にはthrow-catchを使用する

fruit = ['apple','melon','grape']
numbers = [1,2,3,4]

catch :done do
  fruit.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'grape' && n == 3
        throw :done
      end
    end
  end
end