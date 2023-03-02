module testbench;
	reg[8:0] SW;
	wire[9:0] LEDR;
	wire[6:0] HEX0, HEX1;
	
	labbbb tt(SW, LEDR, HEX0, HEX1);
	initial begin
	SW[8:0] = 9'b000000000; #10 // 00
	SW[8:0] = 9'b000010000; #10 // 01
	SW[8:0] = 9'b000110010; #10 // 05
	SW[8:0] = 9'b010000111; #10 // 15
	SW[8:0] = 9'b010011010; #10; // 19
	end
	
endmodule
