module SWG_TB;
reg Clk;
wire [10:0] data_out;

SWG uut ( 
         .Clk(Clk),
         .data_out(data_out)
         );
         
initial 
begin
Clk = 0;
end
always #250 Clk = ~Clk;
endmodule