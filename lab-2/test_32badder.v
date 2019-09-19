module b32test;
	reg [31:0] x, y;
	reg cin;
	wire [31:0] out;
	wire cout;
	
	b32adder b1(x,y,cin,out,cout);
	initial
		begin
			$monitor("Time: %1d", $time, ", x: %32b, y: %32b, cin: %b, out: %32b, cout: %b", x,y,cin,out,cout);
			#0 x=32'b00000000000000000000000000000000; y=32'b10101010101010101010101010101010; cin=1'b1;
			#2 x=32'b10000001010011100101000000011000; y=32'b10101010101000101010101001001010; cin=1'b0;
		end
endmodule