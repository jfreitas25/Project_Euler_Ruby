=begin
	
Project Euler Question 3

https://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end
	
end
	
end

def PrimeFactors(n)
	allFactors = []
	return [] if n == 1

	lowest_factor = (2..n).find { |x| n%x == 0 }
		allFactors << lowest_factor
		allFactors + PrimeFactors(n/lowest_factor)
end

puts PrimeFactors(600851475143)[-1]
