function generateRandomArray(n) {
	var randomArr = []
	for (var i = 0; i < n; i++) {
		randomArr.push(Math.floor(Math.random() * 100));
	}
	return randomArr;
}

describe('mergeSort', function() {
	it('should sort an unsorted array', function() {
		// testing a truly random array
		var randomArr = generateRandomArray(10);
		var clonedArr = randomArr.slice(0);
		expect(mergeSort(clonedArr)).toEqual(randomArr.sort(function(a,b) { return a-b }));

		// hard coded tests for good measure
		expect(mergeSort([1,3,5,7,9,8,6,4,2,0])).toEqual([0,1,2,3,4,5,6,7,8,9]);
		expect(mergeSort([9,8,7,6,5,4,3,2,1,0])).toEqual([0,1,2,3,4,5,6,7,8,9]);
		expect(mergeSort([1,2,3,4,5,0,4,3,2,1])).toEqual([0,1,1,2,2,3,3,4,4,5]);
		
		// check if function also works on odd length arrays.
		expect(mergeSort([1,3,5,7,9,8,6,4,2])).toEqual([1,2,3,4,5,6,7,8,9]);
	});
	
	it('should return an empty array, when given one', function() {
		expect(mergeSort([])).toEqual([]);
	});
	
	it('should handle single element arrays', function() {
		expect(mergeSort([1])).toEqual([1]);
	});
	
	it('should handle small and simple arrays', function() {
		expect(mergeSort([2,1])).toEqual([1,2]);
		expect(mergeSort([3,2,1])).toEqual([1,2,3]);
	});
	
	it('should handle huge unsorted arrays', function() {
		var randomArr = generateRandomArray(10000);
		var clonedArr = randomArr.slice(0);
		expect(mergeSort(clonedArr)).toEqual(randomArr.sort(function(a,b) { return a-b }));
	});
	
	it('should not alter an already sorted array', function() {
		expect(mergeSort([1,2,3,4,5])).toEqual([1,2,3,4,5]);
		expect(mergeSort([6,7,8,9,10,11])).toEqual([6,7,8,9,10,11]);
	});
});