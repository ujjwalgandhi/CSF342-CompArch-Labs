module reg_32bit(q,d,clk,reset);
	input [31:0]d;
	input clk, reset;
	output [31:0]q;
	
	genvar i;
	generate 
		for (i=0; i<32; i=i+1) begin: loop
			d_ff d(q[i],d[i],clk,reset);
		end
	endgenerate
endmodule