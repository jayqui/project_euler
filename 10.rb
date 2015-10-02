def primes_below(num)
	accum = 0
	(2...num).each do |x|
		if is_prime?(x)
			accum += x
		end
	end
	accum
end

def is_prime?(num)
	(2..Math.sqrt(num)).each do |x|
		return false if num % x == 0
	end
	true
end

p primes_below(10)
p primes_below(2_000_000)