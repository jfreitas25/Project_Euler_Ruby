=begin
	
Project Euler #109 (https://projecteuler.net/problem=109)

The score of a dart is determined by the number of the region that the dart lands in. 
A dart landing outside the red/green outer ring scores zero. The black and cream regions inside this ring represent single scores. 
However, the red/green outer ring and middle ring score double and treble scores respectively.

There are exactly eleven distinct ways to checkout on a score of 6.

Incredibly there are 42336 distinct ways of checking out in total.

How many distinct ways can a player checkout with a score less than 100?

=end


singles = *(1..20)
doubles = []
triples = []
singles.each {|i| doubles[i-1] = 2*i}
singles.each {|i| triples[i-1] = 3*i}
doubles << 50
singles << 25

limit = 100
scores = singles
doubles.each { |i| scores << i}
triples.each { |i| scores << i}

count = doubles.size


scores.each do |i|
	doubles.each do |j|
		if i + j < limit
			count += 1
		end
	end
end

n = scores.size - 1
indices = *(0..n)
indices.each do |k|
	indices.each do |i|
		if k >= i
			doubles.each do |j|
				if scores[i] + scores[k] + j < limit
					count += 1
				end
			end
		end
	end
end


puts count