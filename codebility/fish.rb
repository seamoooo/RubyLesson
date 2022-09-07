# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b)
  stack = []
  survivors = 0

  for i in 0..a.size - 1 do
    weight = a[i]
    if b[i] == 1
      stack.push(weight)
    else
      weightdown = stack.pop
      while !weightdown.nil? && weightdown < weight
        weightdown = stack.pop
      end

      if weightdown.nil?
        survivors += 1
      else
       stack.push(weightdown)
      end
    end
  end

  survivors + stack.length
end
