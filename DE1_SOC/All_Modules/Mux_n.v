// 4bit 2-1 Mux

module mux4bit_2to1 (inA, inB, s, out);
   parameter n=4;
   input [n-1:0] inA, inB;
	input s;
	output [n-1:0] out;
	
	assign out= s? inA: inB;
endmodule