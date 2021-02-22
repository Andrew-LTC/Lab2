`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 07:52:55 PM
// Design Name: 
// Module Name: add_3
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


module add_3(
    input [3:0] A,
    output reg [3:0] S
    );
    
    always@(A)
    begin
        S = 4'b0000;
    
        if(A < 5)
            S = A;
        else if(A >= 5 & A < 10)
            S = A + 3;
        else
            S = 4'bx;         
    end
endmodule
