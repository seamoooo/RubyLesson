
stone = 'ruby'

detected = 
  case stone
  when /ruby/
    '7月'
  when /perridot/
    '8月'
  else
    'よくわかりません'
  end

puts detected

