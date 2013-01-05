#solution for project euler 001

implement PE001;
include "sys.m";
sys: Sys;
include "draw.m";

PE001: module
{
	init: fn (ctxt: ref Draw->Context, args: list of string);
};

init (ctxt: ref Draw->Context, args: list of string)
{
	sys = load Sys Sys->PATH;
	total := 0;
	i:int;

	for( i = 3 ; i<1000 ; i += 3 ) {
		total += i;
	}	

	for (i= 5; i<1000; i += 5) {
   		total += i;
	}

	for (i= 15; i<1000; i += 15) {
		total -= i;
	}

	sys->print ("%d\n", total);
}