module RegFile(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);
	input clk,reset,RegWrite;
	input [1:0] ReadReg1, ReadReg2, WriteReg;
	input [31:0] WriteData;
	output [31:0] ReadData1, ReadData2;
	wire [3:0] decout;
	
	decoder2_4 d(decout, WriteData);
	
endmodule