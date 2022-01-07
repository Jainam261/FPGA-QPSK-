// Assumption : Data rate is same as clk rate

module BitSplitter_2(data,clk,data_out);

input data,clk;
output reg [1:0]data_out;

always@(posedge clk)
begin
	data_out[1] <= data;
end

always@(negedge clk)
begin
	data_out[0] <= data;
end	
	
endmodule  