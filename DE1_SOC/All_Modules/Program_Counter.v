//////////////////////////////////////////////////////////////////////////
// 4bit Program Counter
// 
// Can Jump to a 4bit Address

module Program_Counter (clk, jump, custom_data, out);
	input clk, jump;
	input [3:0] custom_data;
	output reg [3:0] out;
	
	initial 
	begin
		out <= 4'b0000;
	end
	
	always @(posedge clk)
	begin
		if (jump)	
		out <= custom_data;
		else 
		out <= out + 1;
	end
endmodule
//////////////////////////////////////////////////////////////////////////
