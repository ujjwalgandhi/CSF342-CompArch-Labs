module bcdtogray (a, b);
	input [3:0]a;
	output [3:0]b;
	
	and a1(b[3], a[3], 1);
	xor x1(b[2], a[3], a[2]);
	xor x2(b[1], a[2], a[1]);
	xor x3(b[0], a[1], a[0]);
endmodule