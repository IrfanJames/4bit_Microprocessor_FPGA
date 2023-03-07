module Test_Cruncher();

   reg clk;
	wire out;
	//wire [3:0] PC_Leds;
	
	Number_Cruncher(clk, out);
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


/////////////////////////////////////////////////////////

//module Test_Cruncher();
//    reg clk;
//	 wire out;
//	 wire [7:0]Op_Code_Leds;
//	 
//	 Number_Cruncher dut(clk,out, Op_Code_Leds);
//	 initial 
//	 begin 
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//	 clk=0; #10; clk=1; #10;
//
//	 end
//endmodule
