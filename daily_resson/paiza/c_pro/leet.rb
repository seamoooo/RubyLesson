word = gets.chomp.split('')

word.each do |w|
  case w
  when 'A'
    print '4'
  when 'E'
    print '3'
  when 'G'
    print '6'
  when 'I'
    print '1'
  when 'O'
    print '0'
  when 'S'
    print '5'
  when 'Z'
    print '2'
  else
    print w
  end
end
