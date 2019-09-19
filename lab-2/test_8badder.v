module testbench;
	reg [7:0] x, y;
	reg cin;
	wire [7:0] out;
	wire cout;
	
	b8adder add(x,y,cin,out,cout);
	initial
		begin
			$monitor("Time: %1d",$time, ", x: %8b, y: %8b, cin: %b, out: %8b, cout: %b", x,y,cin,out,cout);
			#0 x=8'b00000000; y=8'b10101010; cin=1'b1;
			#2 x=8'b01010010; y=8'b00111010; cin=1'b0;
			#2 x=8'b10010111; y=8'b10000100; cin=1'b0;
			#2 x=8'b01001001; y=8'b01110000; cin=1'b1;
		end
endmodule