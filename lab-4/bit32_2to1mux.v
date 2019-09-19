module bit32_2to1mux(out, sel, in1, in2);
	input [31:0] in1, in2;
	output [31:0] out;
	input sel;
	
	genvar j;
	generate for (j=0; j<4; j=j+1) begin: mux32
		bit8_2to1mux m1(out[(j+1)*8-1:j*8], sel, in1[(j+1)*8-1:j*8], in2[(j+1)*8-1:j*8]);
		end
	endgenerate
endmodule

module tb_32bit2to1mux;
	reg [31:0] INP1, INP2;
	reg SEL;
	wire [31:0] out;
	bit32_2to1mux M1(out,SEL,INP1,INP2);
	initial begin
		$monitor($time, " in1 = %32b, in2 = %32b, sel= %b, out = %32b", INP1, INP2, SEL, out);
		INP1=32'h01234567;
		INP2=32'h89ABCDEF;
		SEL=1'b0;
		#100 SEL=1'b1;
		#1000 $finish;
	end
endmodule