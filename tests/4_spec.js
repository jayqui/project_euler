describe("isPalindrome", function() {
	
	it ("should return true for an empty string", function() {
		expect(isPalindrome('')).toEqual(true);
	});
	
	it ("should return true for a 1-letter string", function() {
		expect(isPalindrome('a')).toEqual(true);
	});
	
	it ("should return true for a palindrome of 2+ characters", function() {
		expect(isPalindrome('aa')).toEqual(true);
		expect(isPalindrome('aba')).toEqual(true);
		expect(isPalindrome('abba')).toEqual(true);
	});
	
	it ("should return false for a non-palindrome of 2+ characters", function() {
		expect(isPalindrome('aax')).toEqual(false);
		expect(isPalindrome('abax')).toEqual(false);
		expect(isPalindrome('abxa')).toEqual(false);
	});
});

describe("biggestNumberForDigitCount", function() {
	it ("should return 9999 for 4", function() {
		expect(biggestNumberForDigitCount(4)).toEqual(9999)
	});
});