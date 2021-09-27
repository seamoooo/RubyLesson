class Student
  def initialize(name:, old:, birth:, state:)
    @name = name
    @old = old
    @birth = birth
    @state = state
  end

end

student_conut = gets.to_i
student_data = []
student_conut.times { student_data << gets.chomp.split(' ').map(&:to_s)}
one_year = get.to_i

student_data.each do |val|
  @student = Student.new(name: val[0], old:val[1], birth:val[2], state:val[3])
  puts @student.name if @student.old.to_i == one_year
end