require "rspec"
require_relative "../5"

describe "candidate_divisors" do
	it "should provide an array from 2 to the number" do
		expect(candidate_divisors(10)).to eq([2, 3, 4, 5, 6, 7, 8, 9, 10])
	end
end

describe "factorize_candidate_divisors" do
	it "should provide an array of the prime factors for the candidate divisors" do

		can_div = candidate_divisors(10)

		expect(factorize_candidate_divisors(can_div)).to eq([[2], [3], [2, 2], [5], [2, 3], [7], [2, 2, 2], [3, 3], [2, 5]])
	end
end

describe "tally_each_factoriation" do

	it "should tally up each factorization" do

		can_div = candidate_divisors(10)
		factorizations = factorize_candidate_divisors(can_div)

		expect(tally_each_factoriation(factorizations)).to eq([{2=>1}, {3=>1}, {2=>2}, {5=>1}, {2=>1, 3=>1}, {7=>1}, {2=>3}, {3=>2}, {2=>1, 5=>1}])
	end
end

describe "record_highest_tallies" do
	it "should record the highest tallies" do

		can_div = candidate_divisors(10)
		factorizations = factorize_candidate_divisors(can_div)
		tallies = tally_each_factoriation(factorizations)
		
		expect(record_highest_tallies(tallies)).to eq({2=>3, 3=>2, 5=>1, 7=>1})
	end
end

describe "mulitply_with_values_as_exponents" do
	it "should mulitply with values as exponents" do
		expect(mulitply_with_values_as_exponents({2=>3, 3=>2, 5=>1, 7=>1})).to eq(2**3 * 3**2 * 5**1 * 7**1)
		expect(mulitply_with_values_as_exponents({2=>3, 3=>2, 5=>1, 7=>1})).to eq(2520)
	end
end