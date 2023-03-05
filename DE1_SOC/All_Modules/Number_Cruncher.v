module Number_Cruncher(clk, S, S_reg, D1, D0, J, in, Op_Code, Cout, Display1, Display0, Display3, Display2);
	input clk, S, S_reg, D1, D0, J;
	input  [3:0] in;
	output [6:0] Display1, Display0, Display3, Display2;
	output Cout;
	
	wire   [3:0] PC_Out;
	Program_Counter PC (clk, J, in, PC_Out);
	
	output [7:0] Op_Code;
	RAM RAM_A (PC_Out, Op_Code);
	
	wire   [3:0] ALU_InA;
	wire   [3:0] ALU_InB;
	wire   [3:0] ALU_Out;
	
	wire   [3:0] MUX_Out;
	mux4bit_2to1 Mux_A (ALU_Out, in, S_reg, MUX_Out);
	
	wire   [2:0] Reg_En;
	wire   [3:0] Reg_O_Out;
	Register_En_Decoder Reg_En_A (D1, D0, Reg_En);
	
	Register_4bit Reg_A (MUX_Out, Reg_En[0], 1, clk, ALU_InA);
	Register_4bit Reg_B (MUX_Out, Reg_En[1], 1, clk, ALU_InB);
	Register_4bit Reg_O (ALU_InA, Reg_En[2], 1, clk, Reg_O_Out);
	
	Adder_n ALU (S, ALU_InA, ALU_InB, ALU_Out, Cout);
	
	Display_7_Segment Display_A (Reg_O_Out, Display1, Display0);
	
	Display_7_Segment Display_B (PC_Out, Display3, Display2);
	
endmodule
