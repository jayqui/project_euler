	# start with a list of all numbers from 
	# make 0 and 1 nil (not prime)
	# go halfway up the list
	# check for items that aren't nil
	# for every non-nil item (n) found, e.g., `2`
	# jump to 2x that number (2n), e.g., `4`
	# and then for that number thru the initial num,
	# e.g., `4..100`,
	# change every multiple of that number (2n + n,+n, +n), e.g., `4,6,8...; 3,6,9,...;5,10,15...;...`) to nil

def list_candidates(num)
	list = (0..num).to_a	
	list[0], list[1] = nil, nil
	list
end

def primes_below(num)
	list = list_candidates(num)
	(num / 2 + 1).times do |n|
		if list[n] != nil
			examining = 2*n
			while examining <= num
				list[examining] = nil
				examining += n
			end
		end
	end
	list.compact! # take out the nils
end

p primes_below(100)
# p primes_below(2_000_000)