require 'rspec'
require_relative '../3'

describe "find_first_prime_factor" do
	it "should find the first prime factor" do
		expect(find_first_prime_factor(91)).to eq(7)
	end
	it "should return the number itself if the number is prime" do
		expect(find_first_prime_factor(97)).to eq(97)
	end
end

describe "prime_factors" do
	it "should list the prime factors" do
		expect(prime_factors(84)).to eq([2,2,3,7])
		expect(prime_factors(13195)).to eq([5,7,13,29])
	end
	it "should list a prime number as a singleton in an array" do
		expect(prime_factors(97)).to eq([97])

	end
end