st = gets.chomp.split('')

first = st.first
last = st.last

st_sort = st.sort

st_sort.first == first ? (puts true) : (puts false)


#  コードポイントで比較するスッキリする
st = gets.chomp.split('')

puts st.first.ord < st.last.ord