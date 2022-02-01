module QPSK_OUT(Clk,E,O,data_out,I_out,Q_out);
 
	 input Clk,E,O;
	 
    output data_out,I_out,Q_out;
    
	 integer i;
    reg [10:0] sine [0:100];
	 reg [10:0] sine_n [0:100];
	 reg [10:0] cosine [0:100];
	 reg [10:0] cosine_n [0:100];
	 reg signed [10:0] I_out;
	 reg signed [10:0] Q_out;	 
    reg signed [11:0] data_out; 

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
		  
		  cosine[0] = 1000;
        cosine[1] = 998;
        cosine[2] = 992;
        cosine[3] = 982;
        cosine[4] = 968;
	     cosine[5] = 951;
        cosine[6] = 929;
        cosine[7] = 904;
        cosine[8] = 876;
        cosine[9] = 844;
        cosine[10] = 809;
        cosine[11] = 770;
        cosine[12] = 728;
        cosine[13] = 684;
        cosine[14] = 637;
        cosine[15] = 587;
        cosine[16] = 535;
        cosine[17] = 481;
        cosine[18] = 425;
        cosine[19] = 368;
        cosine[20] = 309;
        cosine[21] = 248;
        cosine[22] = 187;
        cosine[23] = 125;
        cosine[24] = 62;
        cosine[25] = 0;
        cosine[26] = -62;
        cosine[27] = -125;
        cosine[28] = -187;
        cosine[29] = -248;
        cosine[30] = -309;
        cosine[31] = -368;
        cosine[32] = -425;
        cosine[33] = -481;
        cosine[34] = -535;
        cosine[35] = -587;
        cosine[36] = -637;
        cosine[37] = -684;
        cosine[38] = -728;
        cosine[39] = -770;
        cosine[40] = -809;
        cosine[41] = -844;
        cosine[42] = -876;
        cosine[43] = -904;
        cosine[44] = -929;
        cosine[45] = -951;
        cosine[46] = -968;
        cosine[47] = -982;
        cosine[48] = -992;
        cosine[49] = -998;
        cosine[50] = -1000;
        cosine[51] = -998;
        cosine[52] = -992;
        cosine[53] = -982;
        cosine[54] = -968;
	     cosine[55] = -951;
        cosine[56] = -929;
        cosine[57] = -904;
        cosine[58] = -876;
        cosine[59] = -844;
        cosine[60] = -809;
        cosine[61] = -770;
        cosine[62] = -728;
        cosine[63] = -684;
        cosine[64] = -637;
        cosine[65] = -587;
        cosine[66] = -535;
        cosine[67] = -481;
        cosine[68] = -425;
        cosine[69] = -368;
        cosine[70] = -309;
        cosine[71] = -248;
        cosine[72] = -187;
        cosine[73] = -125;
        cosine[74] = -62;
        cosine[75] = 0;
		  cosine[76] = 62;
        cosine[77] = 125;
        cosine[78] = 187;
        cosine[79] = 248;
        cosine[80] = 309;
        cosine[81] = 368;
        cosine[82] = 425;
        cosine[83] = 481;
        cosine[84] = 535;
        cosine[85] = 587;
        cosine[86] = 637;
        cosine[87] = 684;
        cosine[88] = 728;
        cosine[89] = 770;
        cosine[90] = 809;
        cosine[91] = 844;
        cosine[92] = 876;
        cosine[93] = 904;
        cosine[94] = 929;
        cosine[95] = 951;
        cosine[96] = 968;
        cosine[97] = 982;
        cosine[98] = 992;
        cosine[99] = 998;
        cosine[100] = 1000;		  
		 
        sine_n[0] = 0;
        sine_n[1] = -62;
        sine_n[2] = -125;
        sine_n[3] = -187;
        sine_n[4] = -248;
        sine_n[5] = -309;
        sine_n[6] = -368;
        sine_n[7] = -425;
        sine_n[8] = -481;
        sine_n[9] = -535;
        sine_n[10] = -587;
        sine_n[11] = -637;
        sine_n[12] = -684;
        sine_n[13] = -728;
        sine_n[14] = -770;
        sine_n[15] = -809;
        sine_n[16] = -844;
        sine_n[17] = -876;
        sine_n[18] = -904;
        sine_n[19] = -929;
        sine_n[20] = -951;
        sine_n[21] = -968;
        sine_n[22] = -982;
        sine_n[23] = -992;
        sine_n[24] = -998;
        sine_n[25] = -1000;
        sine_n[26] = -998;
        sine_n[27] = -992;
        sine_n[28] = -982;
        sine_n[29] = -968;
	     sine_n[30] = -951;
        sine_n[31] = -929;
        sine_n[32] = -904;
        sine_n[33] = -876;
        sine_n[34] = -844;
        sine_n[35] = -809;
        sine_n[36] = -770;
        sine_n[37] = -728;
        sine_n[38] = -684;
        sine_n[39] = -637;
        sine_n[40] = -587;
        sine_n[41] = -535;
        sine_n[42] = -481;
        sine_n[43] = -425;
        sine_n[44] = -368;
        sine_n[45] = -309;
        sine_n[46] = -248;
        sine_n[47] = -187;
        sine_n[48] = -125;
        sine_n[49] = -62;
        sine_n[50] = 0;
        sine_n[51] = 62;
        sine_n[52] = 125;
        sine_n[53] = 187;
        sine_n[54] = 248;
        sine_n[55] = 309;
        sine_n[56] = 368;
        sine_n[57] = 425;
        sine_n[58] = 481;
        sine_n[59] = 535;
        sine_n[60] = 587;
        sine_n[61] = 637;
        sine_n[62] = 684;
        sine_n[63] = 728;
        sine_n[64] = 770;
        sine_n[65] = 809;
        sine_n[66] = 844;
        sine_n[67] = 876;
        sine_n[68] = 904;
        sine_n[69] = 929;
        sine_n[70] = 951;
        sine_n[71] = 968;
        sine_n[72] = 982;
        sine_n[73] = 992;
        sine_n[74] = 998;
        sine_n[75] = 1000;
        sine_n[76] = 998;
        sine_n[77] = 992;
        sine_n[78] = 982;
        sine_n[79] = 968;
	     sine_n[80] = 951;
        sine_n[81] = 929;
        sine_n[82] = 904;
        sine_n[83] = 876;
        sine_n[84] = 844;
        sine_n[85] = 809;
        sine_n[86] = 770;
        sine_n[87] = 728;
        sine_n[88] = 684;
        sine_n[89] = 637;
        sine_n[90] = 587;
        sine_n[91] = 535;
        sine_n[92] = 481;
        sine_n[93] = 425;
        sine_n[94] = 368;
        sine_n[95] = 309;
        sine_n[96] = 248;
        sine_n[97] = 187;
        sine_n[98] = 125;
        sine_n[99] = 62;
		  sine_n[0] = 0;	  
		  
        cosine_n[0] = -1000;
        cosine_n[1] = -998;
        cosine_n[2] = -992;
        cosine_n[3] = -982;
        cosine_n[4] = -968;
	     cosine_n[5] = -951;
        cosine_n[6] = -929;
        cosine_n[7] = -904;
        cosine_n[8] = -876;
        cosine_n[9] = -844;
        cosine_n[10] = -809;
        cosine_n[11] = -770;
        cosine_n[12] = -728;
        cosine_n[13] = -684;
        cosine_n[14] = -637;
        cosine_n[15] = -587;
        cosine_n[16] = -535;
        cosine_n[17] = -481;
        cosine_n[18] = -425;
        cosine_n[19] = -368;
        cosine_n[20] = -309;
        cosine_n[21] = -248;
        cosine_n[22] = -187;
        cosine_n[23] = -125;
        cosine_n[24] = -62;
        cosine_n[25] = 0;
        cosine_n[26] = 62;
        cosine_n[27] = 125;
        cosine_n[28] = 187;
        cosine_n[29] = 248;
        cosine_n[30] = 309;
        cosine_n[31] = 368;
        cosine_n[32] = 425;
        cosine_n[33] = 481;
        cosine_n[34] = 535;
        cosine_n[35] = 587;
        cosine_n[36] = 637;
        cosine_n[37] = 684;
        cosine_n[38] = 728;
        cosine_n[39] = 770;
        cosine_n[40] = 809;
        cosine_n[41] = 844;
        cosine_n[42] = 876;
        cosine_n[43] = 904;
        cosine_n[44] = 929;
        cosine_n[45] = 951;
        cosine_n[46] = 968;
        cosine_n[47] = 982;
        cosine_n[48] = 992;
        cosine_n[49] = 998;
        cosine_n[50] = 1000;
        cosine_n[51] = 998;
        cosine_n[52] = 992;
        cosine_n[53] = 982;
        cosine_n[54] = 968;
	     cosine_n[55] = 951;
        cosine_n[56] = 929;
        cosine_n[57] = 904;
        cosine_n[58] = 876;
        cosine_n[59] = 844;
        cosine_n[60] = 809;
        cosine_n[61] = 770;
        cosine_n[62] = 728;
        cosine_n[63] = 684;
        cosine_n[64] = 637;
        cosine_n[65] = 587;
        cosine_n[66] = 535;
        cosine_n[67] = 481;
        cosine_n[68] = 425;
        cosine_n[69] = 368;
        cosine_n[70] = 309;
        cosine_n[71] = 248;
        cosine_n[72] = 187;
        cosine_n[73] = 125;
        cosine_n[74] = 62;
		  cosine_n[75] = 0;
        cosine_n[76] = -62;
        cosine_n[77] = -125;
        cosine_n[78] = -187;
        cosine_n[79] = -248;
        cosine_n[80] = -309;
        cosine_n[81] = -368;
        cosine_n[82] = -425;
        cosine_n[83] = -481;
        cosine_n[84] = -535;
        cosine_n[85] = -587;
        cosine_n[86] = -637;
        cosine_n[87] = -684;
        cosine_n[88] = -728;
        cosine_n[89] = -770;
        cosine_n[90] = -809;
        cosine_n[91] = -844;
        cosine_n[92] = -876;
        cosine_n[93] = -904;
        cosine_n[94] = -929;
        cosine_n[95] = -951;
        cosine_n[96] = -968;
        cosine_n[97] = -982;
        cosine_n[98] = -992;
        cosine_n[99] = -998;
		  cosine_n[100] = -1000;
    end

    always@(posedge(Clk))
    begin
		  if(E)
			I_out = sine[i];
		  else
			I_out = sine_n[i];
			
		  if(O)
			Q_out = cosine[i];
		  else
			Q_out = cosine_n[i];
			
		  data_out = Q_out + I_out;
			  
        i = i+1;
        if(i == 100)
            i = 0;
    end
	 
	 
endmodule 

// Verilog project: Verilog code for clock divider on FPGA
// Top level Verilog code for clock divider on FPGA
module Clock_divider(clock_in,clock_out);
input clock_in; // input clock on FPGA
output reg clock_out; // output clock after dividing the input clock by divisor
reg[27:0] counter=28'd0;
parameter DIVISOR = 28'd20000;
always @(posedge clock_in)
begin
 counter <= counter + 28'd1;
 if(counter>=(DIVISOR-1))
  counter <= 28'd0;
 clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
end
endmodule



module Clock_divider2(clock_in2,clock_out2);
input clock_in2; // input clock on FPGA
output reg clock_out2; // output clock after dividing the input clock by divisor
reg[27:0] counter2=28'd0;
parameter DIVISOR2 = 28'd50000;
always @(posedge clock_in2)
begin
 counter2 <= counter2 + 28'd1;
 if(counter2>=(DIVISOR2-1))
  counter2 <= 28'd0;
 clock_out2 <= (counter2<DIVISOR2/2)?1'b1:1'b0;
end

endmodule

