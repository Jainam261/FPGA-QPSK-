/*module Test_Shift2(Clk,d,l,data_out);

    input Clk,d,l;
    output [7:0] data_out;

    reg [7:0] sine [0:29];

    integer i,reset,reset1,reset2,reset3;  
    reg [7:0] data_out; 
 
    initial begin
		  //i = 0;
        sine[0] = 0;
        sine[1] = 16;
        sine[2] = 31;
        sine[3] = 45;
        sine[4] = 58;
        sine[5] = 67;
        sine[6] = 74;
        sine[7] = 77;
        sine[8] = 77;
        sine[9] = 74;
        sine[10] = 67;
        sine[11] = 58;
        sine[12] = 45;
        sine[13] = 31;
        sine[14] = 16;
        sine[15] = 0;
        sine[16] = -16;
        sine[17] = -31;
        sine[18] = -45;
        sine[19] = -58;
        sine[20] = -67;
        sine[21] = -74;
        sine[22] = -77;
        sine[23] = -77;
        sine[24] = -74;
        sine[25] = -67;
        sine[26] = -58;
        sine[27] = -45;
        sine[28] = -31;
        sine[29] = -16;
    end
	 
	 always@(posedge d)
	 begin
		  reset = 1;
		  #40
		  reset = 0;
	 end
	 
	 always@(negedge d)
	 begin
		  reset1 = 1;
		  #40
		  reset1 = 0;
	 end
	 
	 always@(posedge l)
	 begin
		  reset2 = 1;
		  #40
		  reset2 = 0;
	 end
	 
	 always@(negedge l)
	 begin
		  reset3 = 1;
		  #40
		  reset3 = 0;
	 end
	
    always@(posedge(Clk))
    begin
	 
		  if((reset1 | reset3) & (~d & ~l))
		     i = 0;
		  if((reset1 | reset2) & (~d & l))
		     i = 8;
		  if((reset | reset2) & (d & ~l))
		     i = 15;
		  if((reset | reset3) & (d & l))
		     i = 23;

        data_out = sine[i];
        i = i + 1;
        if(i == 29)
            i = 0;

    end


endmodule*/

module Test_Shift2(Clk,E,O,data_out);

    input Clk,E,O;
    output [10:0] data_out;
  
    reg [10:0] sine [0:100];

    integer i;
	 reg OP,ON,EP,EN;
	 
    reg [10:0] data_out; 

    initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 62;
        sine[2] = 125;
        sine[3] = 187;
        sine[4] = 248;
        sine[5] = 309;
        sine[6] = 368;
        sine[7] = 425;
        sine[8] = 481;
        sine[9] = 535;
        sine[10] = 587;
        sine[11] = 637;
        sine[12] = 684;
        sine[13] = 728;
        sine[14] = 770;
        sine[15] = 809;
        sine[16] = 844;
        sine[17] = 876;
        sine[18] = 904;
        sine[19] = 929;
        sine[20] = 951;
        sine[21] = 968;
        sine[22] = 982;
        sine[23] = 992;
        sine[24] = 998;
        sine[25] = 1000;
        sine[26] = 998;
        sine[27] = 992;
        sine[28] = 982;
        sine[29] = 968;
	      sine[30] = 951;
        sine[31] = 929;
        sine[32] = 904;
        sine[33] = 876;
        sine[34] = 844;
        sine[35] = 809;
        sine[36] = 770;
        sine[37] = 728;
        sine[38] = 684;
        sine[39] = 637;
        sine[40] = 587;
        sine[41] = 535;
        sine[42] = 481;
        sine[43] = 425;
        sine[44] = 368;
        sine[45] = 309;
        sine[46] = 248;
        sine[47] = 187;
        sine[48] = 125;
        sine[49] = 62;
        sine[50] = 0;
        sine[51] = -62;
        sine[52] = -125;
        sine[53] = -187;
        sine[54] = -248;
        sine[55] = -309;
        sine[56] = -368;
        sine[57] = -425;
        sine[58] = -481;
        sine[59] = -535;
        sine[60] = -587;
        sine[61] = -637;
        sine[62] = -684;
        sine[63] = -728;
        sine[64] = -770;
        sine[65] = -809;
        sine[66] = -844;
        sine[67] = -876;
        sine[68] = -904;
        sine[69] = -929;
        sine[70] = -951;
        sine[71] = -968;
        sine[72] = -982;
        sine[73] = -992;
        sine[74] = -998;
        sine[75] = -1000;
        sine[76] = -998;
        sine[77] = -992;
        sine[78] = -982;
        sine[79] = -968;
	      sine[80] = -951;
        sine[81] = -929;
        sine[82] = -904;
        sine[83] = -876;
        sine[84] = -844;
        sine[85] = -809;
        sine[86] = -770;
        sine[87] = -728;
        sine[88] = -684;
        sine[89] = -637;
        sine[90] = -587;
        sine[91] = -535;
        sine[92] = -481;
        sine[93] = -425;
        sine[94] = -368;
        sine[95] = -309;
        sine[96] = -248;
        sine[97] = -187;
        sine[98] = -125;
        sine[99] = -62;
        sine[100] = 0;
    end
	 
	 always@(posedge O)
	 begin
		  OP = 1;
		  #40
		  OP = 0;
	 end
	 
	 always@(negedge O)
	 begin
		  ON = 1;
		  #40
		  ON = 0;
	 end
	 
	 always@(posedge E)
	 begin
		  EP = 1;
		  #40
		  EP = 0;
	 end
	 
	 always@(negedge E)
	 begin
		  EN = 1;
		  #40
		  EN = 0;
	 end
    
    always@(posedge(Clk))
    begin
	 
		  if((ON | EN) & (~O & ~E))
		     i = 0;
		  if((ON | EP) & (~O & E))
		     i = 25;
		  if((OP | EN) & (O & ~E))
		     i = 50;
		  if((OP | EP) & (O & E))
		     i = 75;
			  
        data_out = sine[i];
        i = i+1;
        if(i == 100)
            i = 0;
    end

endmodule 
