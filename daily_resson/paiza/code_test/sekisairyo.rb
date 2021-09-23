
sekisai_ryo = 0
saidai_sekisai = 5
track_count = 0

kamotsu = [*1..5].reverse

kamotsu.each_with_index do |el, index|
  sekisai_ryo += el
  if sekisai_ryo >= saidai_sekisai
    sekisai_ryo = 0
    track_count += 1
    sekisai_ryo += el
  end
end

puts track_count