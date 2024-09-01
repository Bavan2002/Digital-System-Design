`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 11:15:15 AM
// Design Name: 
// Module Name: up_down_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_down_counter_tb(
        input reg clk,
        input reg reset,
        input reg dir,
        output [3:0] count
    );
    
    // Instantiate the Unit Under Test (UUT)
    up_down_counter uut (
        .clk(clk), 
        .reset(reset), 
        .dir(dir), 
        .count(count)
    );
    
//Generate clock with 10 ns clk period.
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        // Apply Inputs
        reset = 0;
        dir = 0;
        #300;
        dir = 1;
      #300;
        reset = 1;
        dir = 0;
        #100;
        reset = 0;  
    end
endmodule
