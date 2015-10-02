require 'benchmark'

def solve(n)
	first = 1
	second = 2
	total = 2
	new_fib = first + second
	while new_fib < n
		if new_fib % 2 == 0
			total += new_fib
		end
		first = second
		second = new_fib
		new_fib = first + second
	end
	total
end



p solve(4_000_000) # => 4613732
puts Benchmark.measure { solve(4_000_000) } # about twice as fast as original