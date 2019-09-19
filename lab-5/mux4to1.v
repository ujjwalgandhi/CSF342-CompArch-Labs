module mux4to1(in1, in2, in3, in4, sel, out);
	input in1, in2, in3,in4;
	input [1:0] sel;
	output out;
	wire n1,n2,a1,a2,a3,a4;
	
	not n(n1,sel[1]);
	not nn(n2,sel[0]);
	and d1(a1,in1,n1,n2);
	and d2(a2,in2,n1,sel[0]);
	and d3(a3,in3,sel[1],n2);
	and d4(a4,in4,sel[0],sel[1]);
	or or1(out,a1,a2,a3,a4);
endmodule