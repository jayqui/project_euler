def palindrome?(str)
	return true if str.length == 0 || str.length == 1
	if str[0] == str[-1]
		str = str[1..-2]
		palindrome?(str)
	else
		return false
	end
end
def binary_string_of(num)
	num.to_s(2)
end
def find_answer
	accum = 0
	(1...1_000_000).each do |num|
		if palindrome?(num.to_s) && palindrome?(binary_string_of(num))
			# puts num.to_s + " " + binary_string_of(num)
			accum += num
		end
	end
	"your answer is #{accum}"
end

p find_answer


### pseudo-tests ###
# p binary_string_of(585)
# p palindrome?(binary_string_of(585))

# p palindrome?('58585')
# p palindrome?('585')
# p palindrome?('5856')