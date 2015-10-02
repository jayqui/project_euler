def evenly_divisble_one_thru(max)
	n = 2
	loop do
		(2..max).each do |x|
			break if !(n % x == 0)
			return n if x == max
		end
		n += 1
	end
	nil
end

# p evenly_divisble_one_thru(10)
# p evenly_divisble_one_thru(18)
# p evenly_divisble_one_thru(20)