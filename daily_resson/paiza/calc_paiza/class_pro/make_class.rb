class Employee
  def initialize(number:,name:)
    @number = number
    @name = name
  end

  def getnum
    @number
  end

  def getname
    @name
  end
end

input_count = gets.to_i
employee = []

input_count.times do 
  val = gets.chomp.split(' ').map(&:to_s)

  if val[0] == "make"
    employee << Employee.new(number:val[1],name:val[2])
  elsif val[0] == "getnum"
    n = val[1].to_i - 1 
    puts employee[n].getnum
  else
    n = val[1].to_i - 1
    puts employee[n].getname
  end
end