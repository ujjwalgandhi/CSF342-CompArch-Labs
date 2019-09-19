module b32adder(x,y,cin,out,cout);
	input [31:0] x, y;
	input cin;
	output [31:0] out;
	output cout;
	wire c[2:0];
	
	b8adder b1(x[7:0], y[7:0], cin, out[7:0], c[0]);
	b8adder b2(x[15:8], y[15:8], c[0], out[15:8], c[1]);
	b8adder b3(x[23:16], y[23:16], c[1], out[23:16], c[2]);
	b8adder b4(x[31:24], y[31:24], c[2], out[31:24], cout);
endmodule