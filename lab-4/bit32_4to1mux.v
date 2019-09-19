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
