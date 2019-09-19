module decoder2_4(register,reg_no);
	input [1:0] reg_no;
	output [3:0] register;
	wire n0, n1; 
	
	not g1(n0, reg_no[0]);
	not g2(n1, reg_no[1]);
	and g3(register[0], n1, n0);
	and g4(register[1], n1, reg_no[0]);
	and g5(register[0], reg_no[1], n0);
	and g6(register[0], reg_no[1], reg_no[0]);
endmodule