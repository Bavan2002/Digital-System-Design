`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 11:06:24 AM
// Design Name: 
// Module Name: up_down_counter
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

module up_down_counter(
    input dir,
    input reset,
    input clk,
    output reg [3:0] count
    ); 
    
    wire clk_o;
    
    clk_div clk_div_inst (
		.clk_i(clk),
		.clk_o(clk_o)
	);   
    
     always @(posedge(clk_o) or posedge(reset))
     begin
        if(reset == 1) 
            count <= 4'b0;
        else    
            if(dir == 1)   //Up mode selected
                if(count == 4'b1111)
                    count <= 4'b0;
                else
                    count <= count + 4'b1; //Incremend Counter
            else  //Down mode selected
                if(count == 4'b0)
                    count <= 4'b1111;
                else
                    count <= count - 4'b1; //Decrement counter
     end   
endmodule
