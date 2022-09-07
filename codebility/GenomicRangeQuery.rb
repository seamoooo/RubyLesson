def solution(s, p, q)
  n = s.size
  m = q.size

  nucleotides = {'A' => 0, 'C' => 1,'G' => 2,'T' => 3}
  prefix_sums = []

  #  prefix
  4.times do |i|
   nucleotide_count = []
   inpact_count = 0

   n.times do |num|
    inpact_count += 1 if s[num] == nucleotides.key(i)
    nucleotide_count << inpact_count
   end

   prefix_sums << nucleotide_count
  end

  result = []
  m.times do |i|
    4.times do |num|
      count = prefix_sums[num][q[i]] - prefix_sums[num][p[i]]
      puts "#{nucleotides.key(num)}の#{count}"

    end
  end
end
