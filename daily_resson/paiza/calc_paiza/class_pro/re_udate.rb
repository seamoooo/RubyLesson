ary = gets.split(' ').map(&:to_i)
student = []
ary[0].times { student << gets.split(' ').map(&:to_s)}

change_student = []
ary[1].times { change_student << gets.chomp.split(' ').map(&:to_s) }


class Student
  def initialize(name:, old:, date:, area:)
    @name = name
    @old = old
    @date = date
    @area = area
  end

  def update_name=(name)
    @name = name
  end

  def output_data
    @output_data = "#{@name} #{@old} #{@date} #{@area}"
  end
end

student.each_with_index do |val, key|
  student = Student.new(name:val[0], old:val[1], date:val[2], area:val[3])


  student.update_name=(change_student[key][1]) if change_student[key][0].to_i == (key + 1)
  puts student.output_data
end