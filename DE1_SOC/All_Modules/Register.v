//////////////////////////////////////////////////////////////////////////
// 4bit Parallel Register

module Register_4bit (in, en, reset, clk, out);
	input [3:0] in;
	input en, reset, clk;
	output reg [3:0] out;
	
	always @(posedge clk, negedge reset)
	begin
		if (reset == 0)	out <= 4'b0000;
		else if (en)		out <= in;
	end
endmodule
//////////////////////////////////////////////////////////////////////////