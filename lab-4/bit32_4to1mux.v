module bit32_4to1mux(out, sel, in1, in2, in3);
	input [31:0] in1, in2, in3;
	output [31:0] out;
	input [1:0]sel;
	
	genvar j;
	generate for (j=0; j<32; j=j+1) begin: mux32
		mux4to1 m1(in1[j], in2[j], in3[j], 1'b0, sel, out[j]);
		end
	endgenerate
endmodule

module tb_32bit2to1mux;
	reg [31:0] INP1, INP2, INP3;
	reg [1:0]SEL;
	wire [31:0] out;
	bit32_4to1mux M1(out,SEL,INP1,INP2,INP3);
	initial begin
		$monitor("%4d", $time, ", in1 = %4h, in2 = %4h, in3 = %4h, sel= %2b, out = %4h", INP1, INP2, INP3, SEL, out);
		INP1=32'h0123;
		INP2=32'h89AB;
		INP3=32'h0358;
		SEL=2'b00;
		#100 SEL=2'b01;
		#200 SEL=2'b10;
		#1000 $finish;
	end
endmodule
