module QPSK_Mod(data,clk,Clk,data_out);

input data,clk,Clk;
output [10:0]data_out;

reg data_O,data_E;

always@(posedge clk)
begin
	data_E <= data;
end

always@(negedge clk)
begin
	data_O <= data;
end
	
Test_Shift3 T1(Clk,data_E,data_O,data_out);
	
endmodule  
