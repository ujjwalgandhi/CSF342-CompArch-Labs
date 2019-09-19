module b8adder(x,y,cin,out,cout);
	input [7:0] x, y;
	input cin;
	output [7:0] out;
	output cout;
	wire c[6:0];
	
	fadder f0(out[0], c[0], x[0], y[0], cin);
	fadder f1(out[1], c[1], x[1], y[1], c[0]);
	fadder f2(out[2], c[2], x[2], y[2], c[1]);
	fadder f3(out[3], c[3], x[3], y[3], c[2]);
	fadder f4(out[4], c[4], x[4], y[4], c[3]);
	fadder f5(out[5], c[5], x[5], y[5], c[4]);
	fadder f6(out[6], c[6], x[6], y[6], c[5]);
	fadder f7(out[7], cout, x[7], y[7], c[6]);
endmodule