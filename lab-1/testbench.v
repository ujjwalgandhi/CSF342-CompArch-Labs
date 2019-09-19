module testbench;
	reg a, b;
	wire d;
	nand_gate nandgate (d, a, b); //Class <space> variable name <space> parameters
	initial //Executes the loop once
		begin
			$monitor(, $time, "a=%b, b=%b d=%b", a, b, d);
			#0 a=1'b0; b=1'b0;
			#10 a=1'b0; b=1'b1;
			#20 a=1'b1; b=1'b0;
			#30 a=1'b1; b=1'b1;
			#40 $finish;
		end
endmodule
			