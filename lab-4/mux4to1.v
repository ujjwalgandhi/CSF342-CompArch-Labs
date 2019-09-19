module mux4to1(in1, in2, in3, in4, sel, out);
	input in1, in2, in3, in4;
	input [1:0]sel;
	output out;
	wire o1, o2;
	
	mux2to1 m1(o1, sel[0], in1, in2);
	mux2to1 m2(o2, sel[0], in3, in4);
	mux2to1 m3(out, sel[1], o1, o2);
endmodule