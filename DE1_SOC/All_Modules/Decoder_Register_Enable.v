//////////////////////////////////////////////////////////////////////////
// Decoder
// Register Enable

// D1 D0 |      Enable
// -------------------------
//  0  0 | Reg_A is Enabled
//  0  1 | Reg_B is Enabled
//  1  0 | Reg_0 is Enabled
//  1  1 | None  is Enabled

module Register_En_Decoder (D1, D0, out);
	input D1, D0;
	output reg [2:0] out;
	
	always @(D1, D0)
	begin
		case ( {D1, D0} )
		2'b00: out = 3'b001;
		2'b01: out = 3'b010;
		2'b10: out = 3'b100;
		2'b11: out = 3'b000;
		endcase
	end
endmodule
//////////////////////////////////////////////////////////////////////////
