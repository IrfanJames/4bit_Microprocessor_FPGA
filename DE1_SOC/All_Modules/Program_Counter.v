//////////////////////////////////////////////////////////////////////////
// 4bit Program Counter
// 
// Can Jump to a 4bit Address

module Program_Counter (clk, jump, custom_data, out);
	input clk, jump;
	input [3:0] custom_data;
	output reg [3:0] out;
	
	always @(posedge clk, posedge jump)
	begin
		if (jump == 1)	out <= custom_data;
		else if (clk)	out <= out + 1;
	end
endmodule
//////////////////////////////////////////////////////////////////////////
