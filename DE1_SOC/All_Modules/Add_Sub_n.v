// B input selects b/w add & subtract

module Adder_n(sub, X, Y, Sum, Cout);
	parameter n = 4;
	input sub;
	input [n-1:0] X, Y;
	output Cout;
	output [n-1:0] Sum;
	wire [n:0] C;
	wire [n-1:0] Y0;
	
	assign Y0[0] = sub^Y[0];
	assign Y0[1] = sub^Y[1];
	assign Y0[2] = sub^Y[2];
	assign Y0[3] = sub^Y[3];
	
	genvar i;
	assign C[0] = sub;
	assign Cout = C[n];
	
	generate
	for(i=0;i<=n-1;i=i+1)
		begin:addbit
		fulladd stage(C[i],X[i],Y0[i],Sum[i],C[i+1]);
		end
	endgenerate
	
endmodule


module fulladd(cin,x,y,Sum,Cout);
	input cin,x,y;
	output Sum,Cout;
	
	assign Sum=x^y^cin;
	assign Cout= (x&y) | (x&cin) | (y&cin);
endmodule
