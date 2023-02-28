testing();
reg a,b,c;'
wire y

de1_soc dut(a,b,c,y);
initial 
begin 
a=4'b0000;b=4'b0001;c=0; #10;
a=4'b0010;b=4'b0011;c=0; #10;
//a=4'b0001;b=4'b0100;c=0; #10;
//a=4'b0000;b=4'b0001;c=0; #10;
//a=4'b0000;b=4'b0001;c=0; #10;
//a=4'b0000;b=4'b0001;c=0; #10;

end
