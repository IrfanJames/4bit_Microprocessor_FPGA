module Test();

	reg clk;
	wire [7:0] PC_Out;
	
	Number_Cruncher UU_A (clk, OP_Code);
	 
	 initial
	 begin
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 clk=0; #10; clk=1; #10;
	 end


endmodule
