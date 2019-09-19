module tb32reg;
	reg [31:0] d;
	reg clk,reset;
	wire [31:0] q;
	
	reg_32bit R(q,d,clk,reset);
	
	always @(clk)
	#5 clk <= ~clk;
	initial begin
		$monitor($time, " D = %b, Reset = %b, Q = %b", d, reset, q);
		#0 d = 32'hFFFFFFFF; clk = 1'b1; reset = 1'b1; 
		#10 d = 32'hABCDEFAB;
		#10 reset=1'b0; //Reset the register
		#20 reset=1'b1;
		#20 d=32'hAFAFAFAF;
		#200 $finish;
	end
endmodule