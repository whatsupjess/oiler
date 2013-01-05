#The following iterative sequence is defined for the set of positive integers:
#
#n \u2192 n/2 (n is even)
#n \u2192 3n + 1 (n is odd)
#
#Using the rule above and starting with 13, we generate the following sequence:
#13 \u2192 40 \u2192 20 \u2192 10 \u2192 5 \u2192 16 \u2192 8 \u2192 4 \u2192 2 \u2192 1
#
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
#Which starting number, under one million, produces the longest chain?
#
#NOTE: Once the chain starts the terms are allowed to go above one million
implement Euler014;

include "sys.m"; sys: Sys;
include "draw.m";

Euler014: module {
	init: fn(nil: ref Draw->Context, argv: list of string);
};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	max := 2;
	result := big 4;

	# For every number from 3 to 1,000,000 (because values for 1, 2, and 4 are known)
	for (i:=big 3; i< big 1000000; i++ ){
		current:=numcycles(i);
		# See how many times the function must be called before the number hits 1
		if (current > max) {
			# If that is larger than the maximum, save the number and the new max
			max = current;
			result = i;
			sys->print("%bd (%d cycles)\n", result, max);
		}
	
	}
	
	sys->print("%bd\n", result);
	
	# Print the number that was saved.
}

euler14(n: big): big
{
	if (n % big 2 == big 0)
		return n/big 2;
	return big 3*n + big 1;
}

numcycles(n: big): int
{
	# If n is 1, return 0
	# Return 1 + the number of times euler14(n) requires
	
	if (n==big 1)
		return 0;
	count: int;
	for(count = 0; n != big 1; count++) {
		n = euler14(n);
	}
	return count;
}

#oldnumcycles(n: int): int
#{
	# If n is 1, return 0
	# Return 1 + the number of times euler14(n) requires
	
#	if (n==1)
#		return 0;

#	return 1 + numcycles(euler14(n));
	
#}