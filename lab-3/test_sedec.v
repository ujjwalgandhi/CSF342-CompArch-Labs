module test_sedec;
	reg clk, rst, in;
	wire out;
	reg [15:0] seq;
	integer i;
	
	sedec s(clk, rst, in, out);
	
	initial begin
		clk = 0;
		rst = 1;
		seq = 16'b1011011010110011;
		#5 rst = 0;
		for (i=15; i>=0; i=i-1) begin
			in = seq[i];
			#2 clk  = 1;
			#2 clk = 0;
			$display("Given: State = ", s.state, " Input = ", in, ", Output = ",out);
		end
		testing;
	end
	
	task testing;
		for (i=0; i<16; i=i+1) begin
			in = $random %2;
			#2 clk = 1;
			#2 clk = 0;
			$display("Random: State = ", s.state, " Input = ", in, ", Output = ",out);
		end
	endtask
endmodule