
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE1_SOC( 

////////// ADC //////////
output		          		ADC_CONVST,
output		          		ADC_DIN,
input 		          		ADC_DOUT,
output		          		ADC_SCLK,

//////////// CLOCK //////////
input 		          		CLOCK2_50,
input 		          		CLOCK3_50,
input 		          		CLOCK4_50,
input 		          		CLOCK_50,

//////////// SDRAM //////////
output		    [12:0]		DRAM_ADDR,
output		     [1:0]		DRAM_BA,
output		          		DRAM_CAS_N,
output		          		DRAM_CKE,
output		          		DRAM_CLK,
output		          		DRAM_CS_N,
inout 		    [15:0]		DRAM_DQ,
output		          		DRAM_LDQM,
output		          		DRAM_RAS_N,
output		          		DRAM_UDQM,
output		          		DRAM_WE_N,

//////////// SEG7 //////////
output		     [6:0]		HEX0,
output		     [6:0]		HEX1,
output		     [6:0]		HEX2,
output		     [6:0]		HEX3,
output		     [6:0]		HEX4,
output		     [6:0]		HEX5,

//////////// IR //////////
input 		          		IRDA_RXD,
output		          		IRDA_TXD,

//////////// KEY //////////
input 		     [3:0]		KEY,

//////////// LED //////////
output		     [9:0]		LEDR,

//////////// PS2 //////////
inout 		          		PS2_CLK,
inout 		          		PS2_CLK2,
inout 		          		PS2_DAT,
inout 		          		PS2_DAT2,

//////////// SW //////////
input 		     [9:0]		SW,

//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
inout 		    [35:0]		GPIO
);



//=======================================================
//  REG/WIRE declarations
//=======================================================
	
	Number_Cruncher UU (SW[9], SW[8], SW[7], SW[6], SW[5], SW[3:0], LEDR[3:0], LEDR[4]);
	
endmodule
