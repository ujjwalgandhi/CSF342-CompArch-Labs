module tb_32bit4to1mux;
	reg [31:0] INP1, INP2, INP3, INP4;
	reg [1:0]SEL;
	wire [31:0] out;
	bit32_4to1mux M1(out,SEL,INP1,INP2,INP3,INP4);
	initial begin
		$monitor("%4d", $time, ", in1 = %4h, in2 = %4h, in3 = %4h, in4 = %4h, sel= %2b, out = %4h", INP1, INP2, INP3, INP4, SEL, out);
		INP1=32'h0123;
		INP2=32'h89AB;
		INP3=32'h0358;
		INP4=32'hABCD;
		SEL=2'b00;
		#100 SEL=2'b01;
		#100 SEL=2'b10;
		#100 SEL=2'b11;
		#1000 $finish;
	end
endmodule