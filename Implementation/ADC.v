module ADC(clk,sclk,din,dout,cs,count);

input clk;
output reg din;
input dout;
output wire sclk;
output reg cs;
reg ADD2, ADD0, ADD1;




output reg [3:0] count;

initial 
begin
count = 4'd0;
ADD0 = 0;
ADD1 = 0;
ADD2 = 0;

end

always@(posedge clk)
begin
if (count==1)
begin
cs <= 0;
end
end 

assign sclk = cs?1:clk; 

always@(posedge clk)
begin
count <= count + 4'd1;
end 

always@(posedge clk)
begin 
case (count)
3: begin
din <= ADD2;
end
4: begin
din <= ADD1;
end
5: begin
din <= ADD0;
end
endcase
end

endmodule

