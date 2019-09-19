module testbench;
	reg [3:0]a;
	wire [3:0]b;
	bcdtogray gray (a, b);
	initial
		begin
			$monitor(, "Time: %3d", $time, " Binary:%4b  Gray:%4b", a, b); 
			#0 a = 4'b0000;
			repeat(15)
				#10 a = a+4'b0001; //Only this will be repeated. Use begin-end for multiple statements.
			#160 $finish;
		end
endmodule