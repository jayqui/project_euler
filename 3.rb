def find_first_prime_factor(num)
	for i in (2..num)
		return i if num % i == 0
	end
	# raise "something has gone wrong"
end

def prime_factors(num)
	result = []
	next_prime = find_first_prime_factor(num)
	until next_prime == num
		result << next_prime
		num = num / next_prime
		next_prime = find_first_prime_factor(num)
	end
	result << num
	result
end

def solve(num)
	prime_factors(num)[-1]
end

# p solve(600851475143) # => 6857