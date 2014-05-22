describe('exp', function() {
	it('should calculate the value of an exponent, given the base and (positive) power', function() {
		expect(exp(2,2)).toEqual(4);
		expect(exp(2,3)).toEqual(8);
		expect(exp(2,16)).toEqual(65536);
    expect(exp(2,17)).toEqual(131072);
	});
	
	it('should handle bases to the 0th power', function() {
		expect(exp(52, 0)).toEqual(1);
	});
});

describe('exp2', function() {
	it('should calculate the value of an exponent, given the base and (positive) power', function() {
		expect(exp2(2,2)).toEqual(4);
		expect(exp2(2,3)).toEqual(8);
		expect(exp2(2,16)).toEqual(65536);
    expect(exp2(2,17)).toEqual(131072);
	});
	
	it('should handle bases to the 0th power', function() {
		expect(exp2(52, 0)).toEqual(1);
	});
});