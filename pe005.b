implement PE005;

include "sys.m";
sys: Sys;
include "draw.m";

PE005: module

{
	init: fn(ctxt: ref Draw ->Context, argv : list of string);
};


div1to20 (i : int)
{
	while (i&11 =0 && i&12 =0 && i&13 =0 && i&14 =0 && i&15 =0 &&
	        i&16 =0 && i&17 =0 && i&18 =0 && i&19 =0 && i&20 =0)


	sys -> print ("i%d", i);

}
