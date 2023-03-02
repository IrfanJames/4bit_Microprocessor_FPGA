// implements a 7-segment decoder for 0 to 9.

module segment_7 (in, Display);
	input [3:0] in;
	output [6:0] Display;
	
	assign a= in[3];
	assign b= in[2];
	assign c= in[1];
	assign d= in[0];
	
	assign Display[0] = ~c&( (~a&~b&d) | (b&~d) );				//a
	assign Display[1] = b&( (~c&d) | (c&~d) );					//b
	assign Display[2] = ~b&c&~d;										//c
	assign Display[3] = (~b&~c&d) | b&( (~c&~d) | (c&d) );	//d
	assign Display[4] = b&~c | d;										//e
	assign Display[5] = c&( ~b | d ) | (~a&~b&d);				//f
	assign Display[6] = (~a&~b&~c) | (b&c&d);						//g
endmodule