#In England the currency is made up of pound, £, and pence, p, 
#and there are eight coins in general circulation:

#    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

#It is possible to make £2 in the following way:

 #   1x£1 + 1x50p + 2x20p + 1x5p + 1x2p + 3x1p

#How many different ways can £2 be made using any number #of coins?

implement PE031;

include "sys.m"; sys: Sys;
include "draw.m"; 

PE031: module {
	init: fn(ctxt: ref Draw ->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;	
	coins := 200 :: 100 :: 50 :: 20 :: 10 :: 5 :: 2 :: 1 :: nil;
	number := answer(coins, 200);
	
	sys->print("%d\n", number);
	
	
}

answer(exes: list of int, n: int): int
{
	x := hd exes;
	if (x ==1) {
		return 1;
	}

	if (n<0) {
		return 0;
	}
	
	return answer(tl exes, n) + answer(exes, n - x);
}


	
	