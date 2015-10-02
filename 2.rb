require 'benchmark'

def fibonaccis_below(n)
	list = [1,2]
	while list[-1] < n
		next_fib = list[-2] + list[-1]
		break if next_fib > n
		list.push(next_fib)
	end
	list
end

def select_evens(arr)
	arr.select {|ele| ele % 2 == 0}
end

def solve
	select_evens(fibonaccis_below(4_000_000)).reduce(:+)
end

p solve # => 4613732
puts Benchmark.measure { solve }