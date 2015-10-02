require_relative '3'

def candidate_divisors(num)
	(2..num).to_a
end

def factorize_candidate_divisors(candidate_divisors)
	candidate_divisors.map {|n| prime_factors(n)}
end

def tally_each_factoriation(factorizations_arr)
	tallies = factorizations_arr.map do |factorn|
		tally = {}
		factorn.each do |ele|
			if tally.include?(ele) 
				(tally[ele] += 1) 
			else
				(tally[ele] = 1)
			end
		end
		tally
	end
	tallies
end

def record_highest_tallies(tallies)
	highest_tallies = {}
	tallies.each do |tally|
		tally.each_pair do |k, v|
			if highest_tallies.has_key?(k) 
				if highest_tallies[k] < v
					highest_tallies[k] = v
				end
			else
				highest_tallies[k] = v
			end
		end
	end
	highest_tallies
end

def mulitply_with_values_as_exponents(hash)
	result = 1
	hash.each_pair do |k, v|
		result *= k**v
	end
	result
end

def solve(num)
	can_div = candidate_divisors(num)
	factorizations = factorize_candidate_divisors(can_div)
	tallies = tally_each_factoriation(factorizations)
	highest_tallies = record_highest_tallies(tallies)
	mulitply_with_values_as_exponents(highest_tallies)
end

# p solve(10) # => 2520
# p solve(20) # => 232792560