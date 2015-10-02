function listThreeAndFiveMultiplesBelow(num) {
	var result = [];
	for (var i = 1; i < num; i++) {
		if (i % 3 == 0 || i % 5 == 0) {	
			result.push(i);
		}
	}
	return result
}
function solve(num) {
	tf = listThreeAndFiveMultiplesBelow(num);
	return tf.reduce(function(accumulator, element) {
		return accumulator + element
	})
}

console.log(solve(1000)); // 233168