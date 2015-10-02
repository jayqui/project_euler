function isPalindrome(str) {
	if (str.length == 0 || str.length == 1) {return true;}
	if (str[0] == str.slice(-1)) {
		str = str.slice(1,-1);
		return isPalindrome(str);
	}
	else {
		return false;
	}
}

// strategy: 
// 1) decrement one by one find all products of the number up to 99, e,g., (on second iteration down to 97) 97*97, 97*98, 98*98, 98*99, 99*99
// 2) put these results in a temporary array and sort it
// 3) check that array for palindromes from greatest to least 
// Continue 1-3 until a palindrome is found.

// Note #1: I know the sorted array is inefficient, but until I can discern the pattern in which I should decrement the two factors being multiplied, this is the safest way to go.
// Note #2: I admit there is inefficient duplication at step B1 since certain combinations will have been tried already (e.g., 94 * 99 and 99 * 94). 

function biggestNumberForDigitCount(digit_count) {
	var nineStack = ''
	for (var i = 0; i < digit_count; i++) {
		nineStack += '9'
	}
	return parseInt(nineStack);
}

function findCandidatePalindromes(num_digits) {
	var bigN = biggestNumberForDigitCount(num_digits);
	for (var i = 0; i < 100; i++) {
		decrementBy = i;
		var temp = [];
		for (var j = bigN - decrementBy; j <= bigN; j++) {
			for (var k = bigN - decrementBy; k <= bigN; k++) {
				temp.push([j*k, j.toString() + " * " + k.toString()]);
			}
		}
		temp.sort(function(x,y) { return y[0] - x[0]});
	}
	return temp;
}

function findPalindromeFromList(twoDArray) {
	for (var i = 0; i < twoDArray.length; i++) {
		if (isPalindrome(twoDArray[i][0].toString())) {
			return twoDArray[i];
		}
	}
}


var list = findCandidatePalindromes(3);
console.log(findPalindromeFromList(list));
// => [ 906609, '913 * 993' ]

///// example of the data structure we look through /////
// var list = findCandidatePalindromes(2);
// console.log(list)
// => 
	// [ [ 9801, '99 * 99' ],
  // [ 9702, '99 * 98' ],
  // [ 9702, '98 * 99' ],
  // [ 9604, '98 * 98' ],
  // [ 9603, '99 * 97' ],
  // [ 9603, '97 * 99' ],
  // [ 9506, '97 * 98' ],
  // [ 9506, '98 * 97' ],
  // [ 9504, '99 * 96' ],
  // [ 9504, '96 * 99' ],
  // [ 9409, '97 * 97' ],
  // [ 9408, '98 * 96' ],
  // [ 9408, '96 * 98' ],
  // [ 9405, '99 * 95' ],
  // [ 9405, '95 * 99' ],
  // [ 9312, '97 * 96' ],
  // [ 9312, '96 * 97' ],
  // [ 9310, '95 * 98' ],
  // [ 9310, '98 * 95' ],
  // [ 9306, '94 * 99' ],
  // [ 9306, '99 * 94' ],
  // [ 9216, '96 * 96' ],
  // [ 9215, '95 * 97' ],
  // [ 9215, '97 * 95' ],
  // [ 9212, '98 * 94' ],
  // [ 9212, '94 * 98' ],
  // [ 9207, '93 * 99' ],
  // [ 9207, '99 * 93' ],
  // [ 9120, '96 * 95' ],
  // [ 9120, '95 * 96' ],
  // [ 9118, '94 * 97' ],
  // [ 9118, '97 * 94' ],
  // [ 9114, '98 * 93' ],
  // [ 9114, '93 * 98' ],
  // [ 9108, '99 * 92' ],
  // [ 9108, '92 * 99' ],
  // [ 9025, '95 * 95' ],
  // [ 9024, '94 * 96' ],
  // [ 9024, '96 * 94' ],
  // [ 9021, '97 * 93' ],
  // [ 9021, '93 * 97' ],
  // [ 9016, '98 * 92' ],
  // [ 9016, '92 * 98' ],
  // [ 9009, '91 * 99' ],
  // [ 9009, '99 * 91' ],
  // [ 8930, '94 * 95' ],
  // [ 8930, '95 * 94' ],
  // [ 8928, '96 * 93' ],
  // [ 8928, '93 * 96' ],
  // [ 8924, '97 * 92' ],
  // [ 8924, '92 * 97' ],
  // [ 8918, '98 * 91' ],
  // [ 8918, '91 * 98' ],
  // [ 8910, '90 * 99' ],
  // [ 8910, '99 * 90' ],
  // [ 8836, '94 * 94' ],
  // [ 8835, '95 * 93' ],
  // [ 8835, '93 * 95' ],
  // [ 8832, '92 * 96' ],
  // [ 8832, '96 * 92' ],
  // [ 8827, '91 * 97' ],
  // [ 8827, '97 * 91' ],
  // [ 8820, '98 * 90' ],
  // [ 8820, '90 * 98' ],
  // [ 8742, '94 * 93' ],
  // [ 8742, '93 * 94' ],
  // [ 8740, '95 * 92' ],
  // [ 8740, '92 * 95' ],
  // [ 8736, '91 * 96' ],
  // [ 8736, '96 * 91' ],
  // [ 8730, '97 * 90' ],
  // [ 8730, '90 * 97' ],
  // [ 8649, '93 * 93' ],
  // [ 8648, '92 * 94' ],
  // [ 8648, '94 * 92' ],
  // [ 8645, '91 * 95' ],
  // [ 8645, '95 * 91' ],
  // [ 8640, '90 * 96' ],
  // [ 8640, '96 * 90' ],
  // [ 8556, '93 * 92' ],
  // [ 8556, '92 * 93' ],
  // [ 8554, '94 * 91' ],
  // [ 8554, '91 * 94' ],
  // [ 8550, '90 * 95' ],
  // [ 8550, '95 * 90' ],
  // [ 8464, '92 * 92' ],
  // [ 8463, '91 * 93' ],
  // [ 8463, '93 * 91' ],
  // [ 8460, '94 * 90' ],
  // [ 8460, '90 * 94' ],
  // [ 8372, '92 * 91' ],
  // [ 8372, '91 * 92' ],
  // [ 8370, '93 * 90' ],
  // [ 8370, '90 * 93' ],
  // [ 8281, '91 * 91' ],
  // [ 8280, '92 * 90' ],
  // [ 8280, '90 * 92' ],
  // [ 8190, '91 * 90' ],
  // [ 8190, '90 * 91' ],
  // [ 8100, '90 * 90' ] ]