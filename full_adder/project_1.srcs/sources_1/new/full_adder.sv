`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 11:30:58 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input In1,
    input In2,
    input Cin,
    output Sum,
    output Cout
    );
    
    assign Sum = (In1 ^In2) ^ Cin;
    
    assign Cout = (In1 & In2) | (In2 & Cin) | (Cin & In1);
    
   
endmodule
