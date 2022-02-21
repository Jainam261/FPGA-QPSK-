module check2(Clk,E,O,data_out);

    input Clk,E,O;
    output data_out;
    
	 integer i;
    reg [5:0] sine [0:100];
	 reg [5:0] sine_n [0:100];
	 reg [5:0] cosine [0:100];
	 reg [5:0] cosine_n [0:100];
	 reg /*signed*/ [6:0] I_out;
	 reg /*signed*/ [6:0] Q_out;	 
   reg /*signed*/ [7:0] data_out; 
	 reg [4:0] counter=0;
	 reg clock_out;
	
    initial begin
        i = 0;
		  
        sine[0] = 62/2;
        sine[1] = 66/2;
        sine[2] = 70/2;
        sine[3] = 74/2;
        sine[4] = 78/2;
        sine[5] = 81/2;
        sine[6] = 85/2;
        sine[7] = 89/2;
        sine[8] = 92/2;
        sine[9] = 95/2;
        sine[10] = 99/2;
        sine[11] = 102/2;
        sine[12] = 105/2;
        sine[13] = 108/2;
        sine[14] = 110/2;
        sine[15] = 113/2;
        sine[16] = 115/2;
        sine[17] = 117/2;
        sine[18] = 119/2;
        sine[19] = 120/2;
        sine[20] = 121/2;
        sine[21] = 123/2;
        sine[22] = 123.9/2;
        sine[23] = 124.5/2;
        sine[24] = 124.8/2;
        sine[25] = 125/2;
        sine[26] = 124.8/2;
        sine[27] = 124.5/2;
        sine[28] = 123.9/2;
        sine[29] = 123/2;
	     sine[30] = 121/2;
        sine[31] = 120/2;
        sine[32] = 119/2;
        sine[33] = 117/2;
        sine[34] = 115/2;
        sine[35] = 113/2;
        sine[36] = 110/2;
        sine[37] = 108/2;
        sine[38] = 105/2;
        sine[39] = 102/2;
        sine[40] = 99/2;
        sine[41] = 95/2;
        sine[42] = 92/2;
        sine[43] = 89/2;
        sine[44] = 85/2;
        sine[45] = 81/2;
        sine[46] = 78/2;
        sine[47] = 74/2;
        sine[48] = 70/2;
        sine[49] = 66/2;
        sine[50] = 62.5/2;
        sine[51] = 58/2;
        sine[52] = 54/2;
        sine[53] = 50/2;
        sine[54] = 46/2;
        sine[55] = 43/2;
        sine[56] = 39/2;
        sine[57] = 35/2;
        sine[58] = 32/2;
        sine[59] = 29/2;
        sine[60] = 25/2;
        sine[61] = 22/2;
        sine[62] = 19/2;
        sine[63] = 16/2;
        sine[64] = 14/2;
        sine[65] = 11/2;
        sine[66] = 9/2;
        sine[67] = 7/2;
        sine[68] = 5.94/2;
        sine[69] = 4/2;
        sine[70] = 3.05/2;
        sine[71] = 1.96/2;
        sine[72] = 1.107/2;
        sine[73] = 0.492/2;
        sine[74] = 0.123/2;
        sine[75] = 0/2;
        sine[76] = 0.123/2;
        sine[77] = 0.492/2;
        sine[78] = 1.107/2;
        sine[79] = 1.96/2;
	     sine[80] = 3.05/2;
        sine[81] = 4/2;
        sine[82] = 5.94/2;
        sine[83] = 7/2;
        sine[84] = 9/2;
        sine[85] = 11/2;
        sine[86] = 14/2;
        sine[87] = 16/2;
        sine[88] = 19/2;
        sine[89] = 22/2;
        sine[90] = 25/2;
        sine[91] = 29/2;
        sine[92] = 32/2;
        sine[93] = 35/2;
        sine[94] = 39/2;
        sine[95] = 43/2;
        sine[96] = 46/2;
        sine[97] = 50/2;
        sine[98] = 54/2;
        sine[99] = 58/2;
        sine[100] = 62.5/2;		  
		  
		    cosine[0] = 125/2;
        cosine[1] = 124.8/2;
        cosine[2] = 124.5/2;
        cosine[3] = 123.9/2;
        cosine[4] = 123/2;
	      cosine[5] = 121/2;
        cosine[6] = 120/2;
        cosine[7] = 119/2;
        cosine[8] = 117/2;
        cosine[9] = 115/2;
        cosine[10] = 113/2;
        cosine[11] = 110/2;
        cosine[12] = 108/2;
        cosine[13] = 105/2;
        cosine[14] = 102/2;
        cosine[15] = 99/2;
        cosine[16] = 95/2;
        cosine[17] = 92/2;
        cosine[18] = 89/2;
        cosine[19] = 85/2;
        cosine[20] = 81/2;
        cosine[21] = 78/2;
        cosine[22] = 74/2;
        cosine[23] = 70/2;
        cosine[24] = 66/2;
        cosine[25] = 62.5/2;
        cosine[26] = 58/2;
        cosine[27] = 54/2;
        cosine[28] = 50/2;
        cosine[29] = 46/2;
        cosine[30] = 43/2;
        cosine[31] = 39/2;
        cosine[32] = 35/2;
        cosine[33] = 32/2;
        cosine[34] = 29/2;
        cosine[35] = 25/2;
        cosine[36] = 22/2;
        cosine[37] = 19/2;
        cosine[38] = 16/2;
        cosine[39] = 14/2;
        cosine[40] = 11/2;
        cosine[41] = 9/2;
        cosine[42] = 7/2;
        cosine[43] = 5.94/2;
        cosine[44] = 4/2;
        cosine[45] = 3.05/2;
        cosine[46] = 1.96/2;
        cosine[47] = 1.107/2;
        cosine[48] = 0.492/2;
        cosine[49] = 0.123/2;
        cosine[50] = 0;
        cosine[51] = 0.123/2;
        cosine[52] = 0.492/2;
        cosine[53] = 1.107/2;
        cosine[54] = 1.96/2;
	     cosine[55] = 3.05/2;
        cosine[56] = 4/2;
        cosine[57] = 5.94/2;
        cosine[58] = 7/2;
        cosine[59] = 9/2;
        cosine[60] = 11/2;
        cosine[61] = 14/2;
        cosine[62] = 16/2;
        cosine[63] = 19/2;
        cosine[64] = 22/2;
        cosine[65] = 25/2;
        cosine[66] = 29/2;
        cosine[67] = 32/2;
        cosine[68] = 35/2;
        cosine[69] = 39/2;
        cosine[70] = 43/2;
        cosine[71] = 46/2;
        cosine[72] = 50/2;
        cosine[73] = 54/2;
        cosine[74] = 58/2;
        cosine[75] = 62.5/2;
        cosine[76] = 66/2;
        cosine[77] = 70/2;
        cosine[78] = 74/2;
        cosine[79] = 78/2;
        cosine[80] = 81/2;
        cosine[81] = 85/2;
        cosine[82] = 89/2;
        cosine[83] = 92/2;
        cosine[84] = 95/2;
        cosine[85] = 99/2;
        cosine[86] = 102/2;
        cosine[87] = 105/2;
        cosine[88] = 108/2;
        cosine[89] = 110/2;
        cosine[90] = 113/2;
        cosine[91] = 115/2;
        cosine[92] = 117/2;
        cosine[93] = 119/2;
        cosine[94] = 120/2;
        cosine[95] = 121/2;
        cosine[96] = 123/2;
        cosine[97] = 123.9/2;
        cosine[98] = 124.5/2;
        cosine[99] = 124.8/2;
        cosine[100] = 125/2;
        		  
		 
        sine_n[100] = 62/2;
        sine_n[99] = 66/2;
        sine_n[98] = 70/2;
        sine_n[97] = 74/2;
        sine_n[96] = 78/2;
        sine_n[95] = 81/2;
        sine_n[94] = 85/2;
        sine_n[93] = 89/2;
        sine_n[92] = 92/2;
        sine_n[91] = 95/2;
        sine_n[90] = 99/2;
        sine_n[89] = 102/2;
        sine_n[88] = 105/2;
        sine_n[87] = 108/2;
        sine_n[86] = 110/2;
        sine_n[85] = 113/2;
        sine_n[84] = 115/2;
        sine_n[83] = 117/2;
        sine_n[82] = 119/2;
        sine_n[81] = 120/2;
        sine_n[80] = 121/2;
        sine_n[79] = 123/2;
        sine_n[78] = 123.9/2;
        sine_n[77] = 124.5/2;
        sine_n[76] = 124.8/2;
        sine_n[75] = 125/2;
        sine_n[74] = 124.8/2;
        sine_n[73] = 124.5/2;
        sine_n[72] = 123.9/2;
        sine_n[71] = 123/2;
	     sine_n[70] = 121/2;
        sine_n[69] = 120/2;
        sine_n[68] = 119/2;
        sine_n[67] = 117/2;
        sine_n[66] = 115/2;
        sine_n[65] = 113/2;
        sine_n[64] = 110/2;
        sine_n[63] = 108/2;
        sine_n[62] = 105/2;
        sine_n[61] = 102/2;
        sine_n[60] = 99/2;
        sine_n[59] = 95/2;
        sine_n[58] = 92/2;
        sine_n[57] = 89/2;
        sine_n[56] = 85/2;
        sine_n[55] = 81/2;
        sine_n[54] = 78/2;
        sine_n[53] = 74/2;
        sine_n[52] = 70/2;
        sine_n[51] = 66/2;
        sine_n[50] = 62.5/2;
        sine_n[49] = 58/2;
        sine_n[48] = 54/2;
        sine_n[47] = 50/2;
        sine_n[46] = 46/2;
        sine_n[45] = 43/2;
        sine_n[44] = 39/2;
        sine_n[43] = 35/2;
        sine_n[42] = 32/2;
        sine_n[41] = 29/2;
        sine_n[40] = 25/2;
        sine_n[39] = 22/2;
        sine_n[38] = 19/2;
        sine_n[37] = 16/2;
        sine_n[36] = 14/2;
        sine_n[35] = 11/2;
        sine_n[34] = 9/2;
        sine_n[33] = 7/2;
        sine_n[32] = 5.94/2;
        sine_n[31] = 4/2;
        sine_n[30] = 3.05/2;
        sine_n[29] = 1.96/2;
        sine_n[28] = 1.107/2;
        sine_n[27] = 0.492/2;
        sine_n[26] = 0.123/2;
        sine_n[25] = 0;
        sine_n[24] = 0.123/2;
        sine_n[23] = 0.492/2;
        sine_n[22] = 1.107/2;
        sine_n[21] = 1.96/2;
	     sine_n[20] = 3.05/2;
        sine_n[19] = 4/2;
        sine_n[18] = 5.94/2;
        sine_n[17] = 7/2;
        sine_n[16] = 9/2;
        sine_n[15] = 11/2;
        sine_n[14] = 14/2;
        sine_n[13] = 16/2;
        sine_n[12] = 19/2;
        sine_n[11] = 22/2;
        sine_n[10] = 25/2;
        sine_n[9] = 29/2;
        sine_n[8] = 32/2;
        sine_n[7] = 35/2;
        sine_n[6] = 39/2;
        sine_n[5] = 43/2;
        sine_n[4] = 46/2;
        sine_n[3] = 50/2;
        sine_n[2] = 54/2;
        sine_n[1] = 58/2;
        sine_n[0] = 62.5/2;  
		  
        cosine_n[0] = 0;
        cosine_n[1] = 0.123/2;
        cosine_n[2] = 0.492/2;
        cosine_n[3] = 1.107/2;
        cosine_n[4] = 1.96/2;
	     cosine_n[5] = 3.05/2;
        cosine_n[6] = 4;
        cosine_n[7] = 5.94/2;
        cosine_n[8] = 7/2;
        cosine_n[9] = 9/2;
        cosine_n[10] = 11/2;
        cosine_n[11] = 14/2;
        cosine_n[12] = 16/2;
        cosine_n[13] = 19/2;
        cosine_n[14] = 22/2;
        cosine_n[15] = 25/2;
        cosine_n[16] = 29/2;
        cosine_n[17] = 32/2;
        cosine_n[18] = 35/2;
        cosine_n[19] = 39/2;
        cosine_n[20] = 43/2;
        cosine_n[21] = 46/2;
        cosine_n[22] = 50/2;
        cosine_n[23] = 54/2;
        cosine_n[24] = 58/2;
        cosine_n[25] = 62.5/2;
        cosine_n[26] = 66/2;
        cosine_n[27] = 70/2;
        cosine_n[28] = 74/2;
        cosine_n[29] = 78/2;
        cosine_n[30] = 81/2;
        cosine_n[31] = 85/2;
        cosine_n[32] = 89/2;
        cosine_n[33] = 92/2;
        cosine_n[34] = 95/2;
        cosine_n[35] = 99/2;
        cosine_n[36] = 102/2;
        cosine_n[37] = 105/2;
        cosine_n[38] = 108/2;
        cosine_n[39] = 110/2;
        cosine_n[40] = 113/2;
        cosine_n[41] = 115/2;
        cosine_n[42] = 117/2;
        cosine_n[43] = 119/2;
        cosine_n[44] = 120/2;
        cosine_n[45] = 121/2;
        cosine_n[46] = 123/2;
        cosine_n[47] = 123.9/2;
        cosine_n[48] = 124.5/2;
        cosine_n[49] = 124.8/2;
        cosine_n[50] = 125/2;
        cosine_n[51] = 124.8/2;
        cosine_n[52] = 124.5/2;
        cosine_n[53] = 123.9/2;
        cosine_n[54] = 123/2;
	     cosine_n[55] = 121/2;
        cosine_n[56] = 120/2;
        cosine_n[57] = 119/2;
        cosine_n[58] = 117/2;
        cosine_n[59] = 115/2;
        cosine_n[60] = 113/2;
        cosine_n[61] = 110/2;
        cosine_n[62] = 108/2;
        cosine_n[63] = 105/2;
        cosine_n[64] = 102/2;
        cosine_n[65] = 99/2;
        cosine_n[66] = 95/2;
        cosine_n[67] = 92/2;
        cosine_n[68] = 89/2;
        cosine_n[69] = 85/2;
        cosine_n[70] = 81/2;
        cosine_n[71] = 78/2;
        cosine_n[72] = 74/2;
        cosine_n[73] = 70/2;
        cosine_n[74] = 66/2;
        cosine_n[75] = 62.5/2;
        cosine_n[76] = 58/2;
        cosine_n[77] = 54/2;
        cosine_n[78] = 50/2;
        cosine_n[79] = 46/2;
        cosine_n[80] = 43/2;
        cosine_n[81] = 39/2;
        cosine_n[82] = 35/2;
        cosine_n[83] = 32/2;
        cosine_n[84] = 29/2;
        cosine_n[85] = 25/2;
        cosine_n[86] = 22/2;
        cosine_n[87] = 19/2;
        cosine_n[88] = 16/2;
        cosine_n[89] = 14/2;
        cosine_n[90] = 11/2;
        cosine_n[91] = 9/2;
        cosine_n[92] = 7/2;
        cosine_n[93] = 5.94/2;
        cosine_n[94] = 4/2;
        cosine_n[95] = 3.05/2;
        cosine_n[96] = 1.96/2;
        cosine_n[97] = 1.107/2;
        cosine_n[98] = 0.492/2;
        cosine_n[99] = 0.123/2;
        cosine_n[100] = 0;
    end
	 


always @(posedge Clk)
begin
 counter = counter + 1;
 if(counter>15)
  counter <= 0;
end

always @(posedge Clk)
begin
	if(counter < 8)
		clock_out = 1;
	if(counter >= 8)
		clock_out = 0;
end

    always@(posedge(clock_out))
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
/*module Clock_divider(clock_in,clock_out);
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


module Clock_divider(clock_in,clock_out);

input clock_in; // input clock on FPGA
output reg clock_out; // output clock after dividing the input clock by divisor

reg counter;

always @(posedge clock_in)
begin
 counter = counter + 1;
 if(counter>2)
  counter <= 0;
end

always @(posedge clock_in)
begin
	if(counter)
		clock_out = 1;
	if(~counter)
		clock_out = 0;
end

endmodule*/