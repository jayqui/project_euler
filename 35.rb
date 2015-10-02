def is_prime?(num)
	(2..Math.sqrt(num)).each do |x|
		return false if num % x == 0
	end
	true
end
def rotate(array)
	array.unshift(array.pop)
end
def rotations(num)
	rotations = []
	rotations << num
	arrayified = num.to_s.split('')
	transformed = rotate(arrayified)
	until transformed.join('').to_i == num
		rotations << transformed.join('').to_i
		transformed = rotate(transformed)
	end
	rotations
end
def is_circular_prime?(num)
	return false unless is_prime?(num)
	rotations = rotations(num)
	rotations.each do |rotation| 
		return false unless is_prime?(rotation)
	end
	true
end
def list_circular_primes_below(num)
	(2...num).select do |x|
		is_circular_prime?(x)
	end
end

# p rotations(179)
# p is_circular_prime?(179)
# p list_circular_primes_below(100)
# p list_circular_primes_below(1_000_000)
p list_circular_primes_below(1_000_000).count