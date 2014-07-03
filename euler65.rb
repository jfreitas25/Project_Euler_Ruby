=begin
	
Project Euler #65 (https://projecteuler.net/problem=65)

Find the sum of digits in the numerator of the 100th convergent of the continued fraction for e.
 
=end

upperbound = 100
result = 0

def digit_sum(x)
	array = "#{x}".split(//)
	array = array.map{ |x| x.to_i }
	sum = 0
	array.each { |a| sum+=a }
	puts sum
end

d = 1
n = 2

(2..upperbound).each { |i|
	temp = d
	if i % 3 == 0
		c = 2 * (i/3)
	else
		c = 1
	end
	d = n
	n = c*d + temp
}

puts digit_sum(n)