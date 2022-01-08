module SWG(Clk,data_out);

    input Clk;
    output [10:0] data_out;
  
    reg [10:0] sine [0:100];

    integer i;  
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
    
        always@ (posedge(Clk))
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 100)
            i = 0;
    end

endmodule

