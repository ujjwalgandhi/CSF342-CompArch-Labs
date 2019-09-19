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
