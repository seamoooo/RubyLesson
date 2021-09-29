class Employee
  def initialize(number:,name:)
    @number = number
    @name = name
  end

  def get_number
    @number
  end

  def get_name
    @name
  end

  def chenge_name=(name)
    @name = name
  end

  def chenge_number=(number)
    @number = number
  end
end

input_count = gets.to_i
employee = []

input_count.times do 
  val = gets.chomp.split(' ').map(&:to_s)
  n = val[1].to_i - 1

  if val[0] == "make"
    employee << Employee.new(number:val[1],name:val[2])
  elsif val[0].to_s.start_with?("get")
    if val[0] == "getnum"
      puts employee[n].get_number
    else
      puts employee[n].get_name
    end
  else
    if val[0] == "change_num"
      employee[n].chenge_number=(val[2])
    else
      employee[n].chenge_name=(val[2])
    end
  end
end