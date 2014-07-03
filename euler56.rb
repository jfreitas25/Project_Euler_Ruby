=begin
	
Project Euler #56 

A googol (10^100) is a massive number: one followed by one-hundred zeros; 100^100 is almost unimaginably large: one followed by two-hundred zeros. 
Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, a^b, where a, b < 100, what is the maximum digital sum?

=end


def power(x, y)
	x**y
end

def digit_sum(x,y)
	array = "#{power(x,y)}".split(//)
	array = array.map{ |x| x.to_i }
	sum = 0
	array.each { |a| sum+=a }
	sum
end

maxsum = 0

(1..100).each { |i|
	(1..100).each { |j|
		sum = digit_sum(i,j)
		if sum > maxsum
			maxsum = sum
		end
	}
}

puts maxsum