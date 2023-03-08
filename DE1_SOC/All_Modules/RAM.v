//////////////////////////////////////////////////////////////////////////
// RAM
// In Decoder Form (4 to 8)

module RAM (in, out);
	input  [3:0] in;
	output reg [7:0] out;
	
	always @(in)
	begin
		case ( in )
			4'b0000: out = 8'b00001000;
			4'b0001: out = 8'b00011001;
			4'b0010: out = 8'b00100000;
			4'b0011: out = 8'b00010000;
			4'b0100: out = 8'b01110000;
			4'b0101: out = 8'b00000000;
			4'b0110: out = 8'b00010100;
			4'b0111: out = 8'b00000100;
			4'b1000: out = 8'b10110010;
			default: out = 8'b10110000;
		endcase
	end
endmodule
//////////////////////////////////////////////////////////////////////////
