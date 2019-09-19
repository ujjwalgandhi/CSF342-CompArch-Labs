module alu(a,b,bin,cin,op,res,cout);
	input [31:0] a, b;
	input bin, cin;
	input [1:0] op;
	output [31:0] res; 
	output cout;
	
	wire [31:0] notb, addin, orout, andout, addout;
	
	notb = ~b;
	bit32_2to1mux(addin, bin, a, notb);
	bit32and(andout, a, addin);
	bit32or(orout, a, addin);
	b32adder(a, addin, cin, addout, cout);
	bit32_4to1mux(res, op, andout, orout, addout);
endmodule
	