// 4bit 2-1 Mux

module mux4bit_2to1 (in_A, in_B, s, out);
   parameter n = 4;
   input [n-1:0] in_A, in_B;
	input s;
	output [n-1:0] out;
	
	assign out= s? in_B: in_A;
endmodule