`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 

module tb_counter_4bit;
                logic clk;            
                logic reset_n;        
                logic load;           
                logic [3:0] load_data;
                logic [3:0] count ;  
               
counter_4bit DUT(
                .clk(clk),
                .reset_n(reset_n),
                .load(load),
                .load_data(load_data),
                .count(count)
                ); 
always #5 clk=~clk;
    
initial begin
    clk = 0;
    reset_n = 0; #1; reset_n = 1; load=1;
    #3;
    load_data = 4'b0001 ;
    #3;
//    load_data = 4'b0001 ;
    load =0;
    #50;
    load=1; load_data = 4'b1000 ;
    #20;
    
   
    load =0;
    #30;
    
    $finish;
end             
            
endmodule
