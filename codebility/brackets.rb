def solution(s)
  nested_properly = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }
  

  stack = []
  s.chars.each do |c|
    if nested_properly.keys.include? c
      stack << c
      puts stack
    else
      return 0 if stack.empty?
      puts stack
      stack.pop if nested_properly[stack.last] == c
    end
  end
  stack.empty? ? 1: 0
end
