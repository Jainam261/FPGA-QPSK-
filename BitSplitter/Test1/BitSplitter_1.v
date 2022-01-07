module BitSplitter_1(data,clk,data_out);

input data,clk;
output reg [1:0]data_out;
reg count;

/*always@(posedge clk)
begin
	if(count == 1'b1)
		count = 0;
	else
		count = ~count;
end*/

T_FF T1(1,clk,d1_clk,d0_clk);
D_FF D1(d1_clk,data,d10,d1_c);
D_FF D2(d0_clk,data,d00,d0_c);

always@(posedge clk)
begin
	data_out[0] <= d00;
	data_out[1] <= d10;
end 

	
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