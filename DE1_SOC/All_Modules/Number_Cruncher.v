module Number_Cruncher(clk, OP_Code, Display1, Display0, Display3, Display2);
	input clk;
	output [6:0] Display1, Display0, Display3, Display2;
	output [7:0] OP_Code;
	
	wire         ALU_Cout;
	wire   [3:0] ALU_InA;
	wire   [3:0] ALU_InB;
	wire   [3:0] ALU_Out;
	
	wire [3:0] PC_Out;
	wire J, C, D1, D0, S_reg, S_C2, C1, C0; // {...} is OP_Code
	
	wire DFF_Out_Cout, jump;
	D_ff DF_A (clk, ALU_Cout, DFF_Out_Cout);
	assign jump = J | (C & DFF_Out_Cout);
	Program_Counter PC (clk, jump, {1'b0, S_C2, C1, C0}, PC_Out); // {...} is part of OP_Code
	
	assign OP_Code = {J, C, D1, D0, S_reg, S_C2, C1, C0}; // {...} is OP_Code
	RAM RAM_A (PC_Out, {J, C, D1, D0, S_reg, S_C2, C1, C0});
	
	
	wire   [3:0] MUX_Out;
	mux4bit_2to1 Mux_A (ALU_Out, {1'b0, S_C2, C1, C0}, S_reg, MUX_Out); // {...} is part of OP_Code
	
	wire   [2:0] Reg_En;
	wire   [3:0] Reg_O_Out;
	Register_En_Decoder Reg_En_A (D1, D0, Reg_En);
	
	Register_4bit Reg_A (MUX_Out, Reg_En[0], 1'b1, clk, ALU_InA);
	Register_4bit Reg_B (MUX_Out, Reg_En[1], 1'b1, clk, ALU_InB);
	Register_4bit Reg_O (ALU_InA, Reg_En[2], 1'b1, clk, Reg_O_Out);
	
	Adder_n ALU (S_C2, ALU_InA, ALU_InB, ALU_Out, ALU_Cout);
	
	Display_7_Segment Display_A (Reg_O_Out, Display1, Display0);
	Display_7_Segment Display_B (PC_Out, Display3, Display2);
	
endmodule
