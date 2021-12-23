# 左辺の値が右辺より小さければ負、大きければ正の数、等しければ0
1 <=> 2 #sortで使用される

%w(bob alice chara).sort { |a,b|
  a.length <=> b.length
}

3.step(20, 5){|num| puts num}

1.odd?
2.even?

#3.time 1.upto 3downto

20000.digits #=> [2,0,0,0,0]