kouji_week = gets.to_i

kouji_times = []
kouji_week.times { kouji_times << gets.split(' ').map(&:to_s) }

output = []

kouji_times.each do |value|
  times_ary = value[0].split(':').to_i

  h_range = value[1].to_i
  min_range = value[2].to_i

  times_ary[0] = times_ary[0] + h_range
  times_ary[1] = times_ary[1] + min_range

  if times_ary[1] >= 60
    times_ary[1] = times_ary[1] - 60 
end

n = gets.to_i

n.times do
  t, c_h, c_m = gets.split(' ')
  h, m = t.split(':').map(&:to_i)
  c_h = c_h.to_i
  c_m = c_m.to_i

  m += c_m
  h += c_h
  if m > 59
    m -= 60
    h += 1
  end
  h -= 24 if h > 23

  m = m.to_s
  h = h.to_s
  m = '0' + m if m.length == 1
  h = '0' + h if h.length == 1

  puts h + ':' + m
end