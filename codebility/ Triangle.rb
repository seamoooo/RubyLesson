# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(ary)
  ary.sort! do |a, b|
   b <=> a
  end
  
  result = 0

  (ary.size - 2).times do |i|
    if ary[i] < ary[i + 1] + ary [i + 2]
      result += 1
      break
    end
  end

  result
end
