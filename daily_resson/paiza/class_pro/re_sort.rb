student_conut = gets.to_i
student = []
student_conut.times { student << gets.split(' ').map(&:to_s)}

sort_student = student.sort do |a,b|
  a = a[2].to_i
  b = b[2].to_i
  pp a, b
  a <=> b
end

sort_student.each do |val|
  puts val.join(' ')
end