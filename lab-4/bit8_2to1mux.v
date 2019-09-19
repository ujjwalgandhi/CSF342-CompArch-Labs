module bit8_2to1mux(out,sel,in1,in2);
	input [7:0] in1,in2;
	output [7:0] out;
	input sel;
	genvar j; //this is the variable that is be used in the generate block
	generate for (j=0; j<8; j=j+1) begin: mux_loop //mux_loop is the name of the loop
		mux2to1 m1(out[j],sel,in1[j],in2[j]);
		//mux2to1 is instantiated every time it is called
		end
	endgenerate
endmodule

// module tb_8bit2to1mux;
	// reg [7:0] INP1, INP2;
	// reg SEL;
	// wire [7:0] out;
	// bit8_2to1mux M1(out,SEL,INP1,INP2);
	// initial begin
		// $monitor($time, " in1 = %8b, in2 = %8b, sel= %b, out = %8b", INP1, INP2, SEL, out);
		// INP1=8'b10101010;
		// INP2=8'b01010101;
		// SEL=1'b0;
		// #100 SEL=1'b1;
		// #1000 $finish;
	// end
// endmodule
