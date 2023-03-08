//////////////////////////////////////////////////////////////////////////
// Display on two 7-Segment
// Range 0-19

module Display_7_Segment (in, Display_1, Display_0);
	input [4:0] in;
	output [6:0] Display_1, Display_0;
	
	wire less_than_9;
	comparator U_C (in, less_than_9);
	segment_7_01 U_D (less_than_9, Display_1);
	
	wire [4:0] final_in_display;
	wire [4:0] Cir_A;
	Circuit_A U_E (in, Cir_A);
	mux4bit_2to1 U_F (in, Cir_A, less_than_9, final_in_display);
	segment_7 U_G (final_in_display[3:0], Display_0);
endmodule
//////////////////////////////////////////////////////////////////////////



////////////////////////// Sub-Modules ///////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// Comparator // out = (in > 9)
module comparator(in,out);
	input [4:0] in;
	output out;
	
	assign out= in[4] | ( in[3] & (in[2] | in[1] ) );
endmodule
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// This module is manipulating the input from 10 to 15 ////////////// Expand it ///////////////
module Circuit_A (in, out);
	input [4:0] in;
	output [4:0] out;
	
	assign a = in[4];
	assign b = in[3];
	assign c = in[2];
	assign d = in[1];
	assign e = in[0];
	
	assign out[4] = 1'b0;
	assign out[3] = (~b & d);
	assign out[2] = (~b&~d) | (c&d);
	assign out[1] = ~d;
	assign out[0] = e;
endmodule
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// implements a 7-segment decoder for 0-F.
module segment_7 (in, Display);
	input [3:0] in;
	output [6:0] Display;
	
	assign a= in[3];
	assign b= in[2];
	assign c= in[1];
	assign d= in[0];
	
	assign Display[0] = ~c&( (~a&~b&d) | (b&~d) ); //a
	assign Display[1] = b&( (~c&d) | (c&~d) ); //b
	assign Display[2] = ~b&c&~d; //c
	assign Display[3] = (~b&~c&d) | b&( (~c&~d) | (c&d) ); //d
	assign Display[4] = b&~c | d; //e
	assign Display[5] = c&( ~b | d ) | (~a&~b&d); //f
	assign Display[6] = (~a&~b&~c) | (b&c&d); //g
endmodule
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// implements a 7-segment decoder for displaying 0 and 1
module segment_7_01 (in, Display);
	input in;
	output [6:0] Display;
	
	assign Display[0] = in;
	assign Display[1] = 1'b0;
	assign Display[2] = 1'b0;
	assign Display[3] = in;
	assign Display[4] = in;
	assign Display[5] = in;
	assign Display[6] = 1'b1;
endmodule
//////////////////////////////////////////////////////////////////////////
