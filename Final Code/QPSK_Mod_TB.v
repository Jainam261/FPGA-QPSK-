module QPSK_Mod_TB;
  reg data,clk,Clk;
  wire [10:0]data_out;
  
  QPSK_Mod uut(.data(data),.clk(clk),.Clk(Clk),.data_out(data_out));
  
  initial
  begin
    clk = 0;
    Clk = 0;
    data = 1;
    #8500       //8500
    data = 0;
    #10000      //18500
    data = 0;
    #29000      //39000
    data = 1;
    #13000      //52000     
    data = 0;
    #500
    data = 1;
    data = 0;
    #24500
    data = 1;
    #16000         //40500
    data = 0;
    #8000         //48500
    data = 1;
  end
  
  always #20 Clk = ~Clk;
  always #8000 clk = ~clk;

endmodule 
