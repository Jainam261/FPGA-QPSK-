module sin_gen_tb;

    reg Clk;
    
    wire [7:0] data_out;
 
     sin_gen uut (
        .Clk(Clk), 
        .data_out(data_out)
    );

    initial 
    begin
      Clk = 0;
    end
    always #20 Clk = ~Clk;
    
endmodule