module check2(Clk,E,O,I_out,clock_out);

    input Clk,E,O;
    output I_out,clock_out;
    
	 integer i;
    reg [6:0] sine [0:100];
	 reg [6:0] sine_n [0:100];
	 reg [6:0] cosine [0:100];
	 reg [6:0] cosine_n [0:100];
	 reg /*signed*/ [7:0] I_out;
	 reg /*signed*/ [7:0] Q_out;	 
    reg /*signed*/ [7:0] data_out; 
	 reg [4:0] counter=0;
	 reg clock_out;
	
    initial begin
        i = 0;
		  
        sine[0] = 62;
        sine[1] = 66;
        sine[2] = 70;
        sine[3] = 74;
        sine[4] = 78;
        sine[5] = 81;
        sine[6] = 85;
        sine[7] = 89;
        sine[8] = 92;
        sine[9] = 95;
        sine[10] = 99;
        sine[11] = 102;
        sine[12] = 105;
        sine[13] = 108;
        sine[14] = 110;
        sine[15] = 113;
        sine[16] = 115;
        sine[17] = 117;
        sine[18] = 119;
        sine[19] = 120;
        sine[20] = 121;
        sine[21] = 123;
        sine[22] = 123.9;
        sine[23] = 124.5;
        sine[24] = 124.8;
        sine[25] = 125;
        sine[26] = 124.8;
        sine[27] = 124.5;
        sine[28] = 123.9;
        sine[29] = 123;
	     sine[30] = 121;
        sine[31] = 120;
        sine[32] = 119;
        sine[33] = 117;
        sine[34] = 115;
        sine[35] = 113;
        sine[36] = 110;
        sine[37] = 108;
        sine[38] = 105;
        sine[39] = 102;
        sine[40] = 99;
        sine[41] = 95;
        sine[42] = 92;
        sine[43] = 89;
        sine[44] = 85;
        sine[45] = 81;
        sine[46] = 78;
        sine[47] = 74;
        sine[48] = 70;
        sine[49] = 66;
        sine[50] = 62.5;
        sine[51] = 58;
        sine[52] = 54;
        sine[53] = 50;
        sine[54] = 46;
        sine[55] = 43;
        sine[56] = 39;
        sine[57] = 35;
        sine[58] = 32;
        sine[59] = 29;
        sine[60] = 25;
        sine[61] = 22;
        sine[62] = 19;
        sine[63] = 16;
        sine[64] = 14;
        sine[65] = 11;
        sine[66] = 9;
        sine[67] = 7;
        sine[68] = 5.94;
        sine[69] = 4;
        sine[70] = 3.05;
        sine[71] = 1.96;
        sine[72] = 1.107;
        sine[73] = 0.492;
        sine[74] = 0.123;
        sine[75] = 0;
        sine[76] = 0.123;
        sine[77] = 0.492;
        sine[78] = 1.107;
        sine[79] = 1.96;
	     sine[80] = 3.05;
        sine[81] = 4;
        sine[82] = 5.94;
        sine[83] = 7;
        sine[84] = 9;
        sine[85] = 11;
        sine[86] = 14;
        sine[87] = 16;
        sine[88] = 19;
        sine[89] = 22;
        sine[90] = 25;
        sine[91] = 29;
        sine[92] = 32;
        sine[93] = 35;
        sine[94] = 39;
        sine[95] = 43;
        sine[96] = 46;
        sine[97] = 50;
        sine[98] = 54;
        sine[99] = 58;
        sine[100] = 62.5;		  
		  
		    cosine[0] = 125;
        cosine[1] = 124.8;
        cosine[2] = 124.5;
        cosine[3] = 123.9;
        cosine[4] = 123;
	      cosine[5] = 121;
        cosine[6] = 120;
        cosine[7] = 119;
        cosine[8] = 117;
        cosine[9] = 115;
        cosine[10] = 113;
        cosine[11] = 110;
        cosine[12] = 108;
        cosine[13] = 105;
        cosine[14] = 102;
        cosine[15] = 99;
        cosine[16] = 95;
        cosine[17] = 92;
        cosine[18] = 89;
        cosine[19] = 85;
        cosine[20] = 81;
        cosine[21] = 78;
        cosine[22] = 74;
        cosine[23] = 70;
        cosine[24] = 66;
        cosine[25] = 62.5;
        cosine[26] = 58;
        cosine[27] = 54;
        cosine[28] = 50;
        cosine[29] = 46;
        cosine[30] = 43;
        cosine[31] = 39;
        cosine[32] = 35;
        cosine[33] = 32;
        cosine[34] = 29;
        cosine[35] = 25;
        cosine[36] = 22;
        cosine[37] = 19;
        cosine[38] = 16;
        cosine[39] = 14;
        cosine[40] = 11;
        cosine[41] = 9;
        cosine[42] = 7;
        cosine[43] = 5.94;
        cosine[44] = 4;
        cosine[45] = 3.05;
        cosine[46] = 1.96;
        cosine[47] = 1.107;
        cosine[48] = 0.492;
        cosine[49] = 0.123;
        cosine[50] = 0;
        cosine[51] = 0.123;
        cosine[52] = 0.492;
        cosine[53] = 1.107;
        cosine[54] = 1.96;
	     cosine[55] = 3.05;
        cosine[56] = 4;
        cosine[57] = 5.94;
        cosine[58] = 7;
        cosine[59] = 9;
        cosine[60] = 11;
        cosine[61] = 14;
        cosine[62] = 16;
        cosine[63] = 19;
        cosine[64] = 22;
        cosine[65] = 25;
        cosine[66] = 29;
        cosine[67] = 32;
        cosine[68] = 35;
        cosine[69] = 39;
        cosine[70] = 43;
        cosine[71] = 46;
        cosine[72] = 50;
        cosine[73] = 54;
        cosine[74] = 58;
        cosine[75] = 62.5;
        cosine[76] = 66;
        cosine[77] = 70;
        cosine[78] = 74;
        cosine[79] = 78;
        cosine[80] = 81;
        cosine[81] = 85;
        cosine[82] = 89;
        cosine[83] = 92;
        cosine[84] = 95;
        cosine[85] = 99;
        cosine[86] = 102;
        cosine[87] = 105;
        cosine[88] = 108;
        cosine[89] = 110;
        cosine[90] = 113;
        cosine[91] = 115;
        cosine[92] = 117;
        cosine[93] = 119;
        cosine[94] = 120;
        cosine[95] = 121;
        cosine[96] = 123;
        cosine[97] = 123.9;
        cosine[98] = 124.5;
        cosine[99] = 124.8;
        cosine[100] = 125;
        		  
		 
        sine_n[100] = 62;
        sine_n[99] = 66;
        sine_n[98] = 70;
        sine_n[97] = 74;
        sine_n[96] = 78;
        sine_n[95] = 81;
        sine_n[94] = 85;
        sine_n[93] = 89;
        sine_n[92] = 92;
        sine_n[91] = 95;
        sine_n[90] = 99;
        sine_n[89] = 102;
        sine_n[88] = 105;
        sine_n[87] = 108;
        sine_n[86] = 110;
        sine_n[85] = 113;
        sine_n[84] = 115;
        sine_n[83] = 117;
        sine_n[82] = 119;
        sine_n[81] = 120;
        sine_n[80] = 121;
        sine_n[79] = 123;
        sine_n[78] = 123.9;
        sine_n[77] = 124.5;
        sine_n[76] = 124.8;
        sine_n[75] = 125;
        sine_n[74] = 124.8;
        sine_n[73] = 124.5;
        sine_n[72] = 123.9;
        sine_n[71] = 123;
	     sine_n[70] = 121;
        sine_n[69] = 120;
        sine_n[68] = 119;
        sine_n[67] = 117;
        sine_n[66] = 115;
        sine_n[65] = 113;
        sine_n[64] = 110;
        sine_n[63] = 108;
        sine_n[62] = 105;
        sine_n[61] = 102;
        sine_n[60] = 99;
        sine_n[59] = 95;
        sine_n[58] = 92;
        sine_n[57] = 89;
        sine_n[56] = 85;
        sine_n[55] = 81;
        sine_n[54] = 78;
        sine_n[53] = 74;
        sine_n[52] = 70;
        sine_n[51] = 66;
        sine_n[50] = 62.5;
        sine_n[49] = 58;
        sine_n[48] = 54;
        sine_n[47] = 50;
        sine_n[46] = 46;
        sine_n[45] = 43;
        sine_n[44] = 39;
        sine_n[43] = 35;
        sine_n[42] = 32;
        sine_n[41] = 29;
        sine_n[40] = 25;
        sine_n[39] = 22;
        sine_n[38] = 19;
        sine_n[37] = 16;
        sine_n[36] = 14;
        sine_n[35] = 11;
        sine_n[34] = 9;
        sine_n[33] = 7;
        sine_n[32] = 5.94;
        sine_n[31] = 4;
        sine_n[30] = 3.05;
        sine_n[29] = 1.96;
        sine_n[28] = 1.107;
        sine_n[27] = 0.492;
        sine_n[26] = 0.123;
        sine_n[25] = 0;
        sine_n[24] = 0.123;
        sine_n[23] = 0.492;
        sine_n[22] = 1.107;
        sine_n[21] = 1.96;
	     sine_n[20] = 3.05;
        sine_n[19] = 4;
        sine_n[18] = 5.94;
        sine_n[17] = 7;
        sine_n[16] = 9;
        sine_n[15] = 11;
        sine_n[14] = 14;
        sine_n[13] = 16;
        sine_n[12] = 19;
        sine_n[11] = 22;
        sine_n[10] = 25;
        sine_n[9] = 29;
        sine_n[8] = 32;
        sine_n[7] = 35;
        sine_n[6] = 39;
        sine_n[5] = 43;
        sine_n[4] = 46;
        sine_n[3] = 50;
        sine_n[2] = 54;
        sine_n[1] = 58;
        sine_n[0] = 62.5;  
		  
        cosine_n[0] = 0;
        cosine_n[1] = 0.123;
        cosine_n[2] = 0.492;
        cosine_n[3] = 1.107;
        cosine_n[4] = 1.96;
	     cosine_n[5] = 3.05;
        cosine_n[6] = 4;
        cosine_n[7] = 5.94;
        cosine_n[8] = 7;
        cosine_n[9] = 9;
        cosine_n[10] = 11;
        cosine_n[11] = 14;
        cosine_n[12] = 16;
        cosine_n[13] = 19;
        cosine_n[14] = 22;
        cosine_n[15] = 25;
        cosine_n[16] = 29;
        cosine_n[17] = 32;
        cosine_n[18] = 35;
        cosine_n[19] = 39;
        cosine_n[20] = 43;
        cosine_n[21] = 46;
        cosine_n[22] = 50;
        cosine_n[23] = 54;
        cosine_n[24] = 58;
        cosine_n[25] = 62.5;
        cosine_n[26] = 66;
        cosine_n[27] = 70;
        cosine_n[28] = 74;
        cosine_n[29] = 78;
        cosine_n[30] = 81;
        cosine_n[31] = 85;
        cosine_n[32] = 89;
        cosine_n[33] = 92;
        cosine_n[34] = 95;
        cosine_n[35] = 99;
        cosine_n[36] = 102;
        cosine_n[37] = 105;
        cosine_n[38] = 108;
        cosine_n[39] = 110;
        cosine_n[40] = 113;
        cosine_n[41] = 115;
        cosine_n[42] = 117;
        cosine_n[43] = 119;
        cosine_n[44] = 120;
        cosine_n[45] = 121;
        cosine_n[46] = 123;
        cosine_n[47] = 123.9;
        cosine_n[48] = 124.5;
        cosine_n[49] = 124.8;
        cosine_n[50] = 125;
        cosine_n[51] = 124.8;
        cosine_n[52] = 124.5;
        cosine_n[53] = 123.9;
        cosine_n[54] = 123;
	     cosine_n[55] = 121;
        cosine_n[56] = 120;
        cosine_n[57] = 119;
        cosine_n[58] = 117;
        cosine_n[59] = 115;
        cosine_n[60] = 113;
        cosine_n[61] = 110;
        cosine_n[62] = 108;
        cosine_n[63] = 105;
        cosine_n[64] = 102;
        cosine_n[65] = 99;
        cosine_n[66] = 95;
        cosine_n[67] = 92;
        cosine_n[68] = 89;
        cosine_n[69] = 85;
        cosine_n[70] = 81;
        cosine_n[71] = 78;
        cosine_n[72] = 74;
        cosine_n[73] = 70;
        cosine_n[74] = 66;
        cosine_n[75] = 62.5;
        cosine_n[76] = 58;
        cosine_n[77] = 54;
        cosine_n[78] = 50;
        cosine_n[79] = 46;
        cosine_n[80] = 43;
        cosine_n[81] = 39;
        cosine_n[82] = 35;
        cosine_n[83] = 32;
        cosine_n[84] = 29;
        cosine_n[85] = 25;
        cosine_n[86] = 22;
        cosine_n[87] = 19;
        cosine_n[88] = 16;
        cosine_n[89] = 14;
        cosine_n[90] = 11;
        cosine_n[91] = 9;
        cosine_n[92] = 7;
        cosine_n[93] = 5.94;
        cosine_n[94] = 4;
        cosine_n[95] = 3.05;
        cosine_n[96] = 1.96;
        cosine_n[97] = 1.107;
        cosine_n[98] = 0.492;
        cosine_n[99] = 0.123;
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