require 'rspec'
require_relative '../2'

describe "fibonaccis_below" do
	it "should return the first n fibonaccis below a given number" do
		expect(fibonaccis_below(100)).to eq([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
	end
end

describe "select_evens" do
	it "should return only the even elements" do
		expect(select_evens([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])).to eq([2,8,34])
	end
end

