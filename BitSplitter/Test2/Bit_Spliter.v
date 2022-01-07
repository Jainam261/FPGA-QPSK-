module Bit_Spliter(data,clk,d1,d2);

input data,clk;
output d1,d2;

T_FF T1(1,clk,d1_clk,d2_clk);
D_FF D1(d1_clk,data,d10,d1_c);
D_FF D2(d2_clk,data,d20,d2_c);

assign d1 = d10;
assign d2 = d20;
	
endmodule  

module D_FF(clk,d,out,out_comp);

input clk,d;
output reg out,out_comp;

always@(posedge clk)
begin
	out <= d;
	out_comp = ~out;
end

endmodule 

module T_FF(T,clk,out,out_comp);

input T,clk;
output reg out,out_comp;

always@(posedge clk)
begin
	if(~T)
		out <= out;
	else if(T)
		out <= ~out;
		out_comp <= out;
end

endmodule 