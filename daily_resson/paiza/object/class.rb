
class User
  
  def initialize(nickname:,old:,birth:,state:)
   @nickname = nickname
   @old = old
   @birth = birth
   @state = state
  end

  def return_obj
   @return_obj = <<-EOS
User{
nickname : #{@nickname}
old : #{@old}
birth : #{@birth}
state : #{@state}
}
   EOS
  end
end

user_count = gets.to_i
users = []
user_count.times { users << gets.chomp.split(' ').map(&:to_s) }

users.each do | val |
 user = User.new(nickname:val[0],old:val[1],birth:val[2],state:val[3])
 p user.return_obj
end
