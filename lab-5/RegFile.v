module RegFile(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);
	input clk,reset,RegWrite;
	input [1:0] ReadReg1, ReadReg2, WriteReg;
	input [31:0] WriteData;
	output [31:0] ReadData1, ReadData2;
	wire [3:0] decout, regin, regout;
	
	decoder2_4 d(decout, WriteData);
	genvar i;
	generate 
		for(i=0; i<4;i=i+1) begin: loop
			assign regin[i] = clk & RegWrite & decout[i];
			reg_32bit r(regout, WriteData, regin[i], reset);
		end
	endgenerate
	bit32_4to1mux m1();
	bit32_4to1mux m2();
	
endmodule