=begin
	
Project Euler Question #25 (https://projecteuler.net/problem=25)

What is the first term in the Fibonacci sequence to contain 1000 digits?

=end

result = 0
fibone = 1
fibtwo = 2
count = 3

until result == 1000 
	fib = fibone + fibtwo
	fibone = fibtwo
	fibtwo = fib
	count += 1
	array = fib.to_s.split(//)
	result = array.size
end

puts count