describe('recursSum', function() {
	it('should return the sum of a given array of integers', function() {
		expect(recursSum([1,2,3,4,5])).toEqual(15);
		expect(recursSum([2,2,2,2,2])).toEqual(10);
		expect(recursSum([10,10,10])).toEqual(30);
	});
	
	it('should return 0 when given an empty array', function() {
		expect(recursSum([])).toEqual(0);
	});
	
	it('should handle single element arrays', function() {
		expect(recursSum([10])).toEqual(10);
	});
	
	it('should also handle negative integers', function() {
		expect(recursSum([3,2,1,0,-1,-2,-3])).toEqual(0);
		expect(recursSum([-1,-2,-3,-4,-5])).toEqual(-15);
	});
});

describe('argSum', function() {
	it('should return the sum of an unspecified number of integers', function() {
		expect(argSum(1,2,3,4,5)).toEqual(15);
		expect(argSum(2,2,2,2)).toEqual(8);
		expect(argSum(10,10,10)).toEqual(30);
	});
	
	it('should return 0 when nothing is given', function() {
		expect(argSum()).toEqual(0);
	});
	
	it('should handle single element arrays', function() {
		expect(argSum(100)).toEqual(100);
	});
	
	it('should also handle negative integers', function() {
		expect(argSum(3,2,1,0,-1,-2,-3)).toEqual(0);
		expect(argSum(-1,-2,-3,-4,-5)).toEqual(-15);
	});

	// Just an observation
	// it('does crazy stuff with strings', function() {
	// 	expect(argSum("This", "Is", "A", "Test")).toEqual("TestAIsThis");
	// });
})