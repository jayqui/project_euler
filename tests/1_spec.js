describe("listThreeAndFiveMultiplesBelow", function() {
		it ("should return 3, 5, 6 and 9 for n=10", function() {
			expect(listThreeAndFiveMultiplesBelow(10)).toEqual([3,5,6,9]);
		});
});
describe("solve", function() {
	it ("should return 23 in the case of n=10", function() {
		expect(solve(10)).toEqual(23);
	});
});