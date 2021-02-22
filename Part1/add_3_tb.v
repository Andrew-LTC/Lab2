`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 08:03:38 PM
// Design Name: 
// Module Name: add_3_tb
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


module add_3_tb(

    );
    reg [3:0] A;
    wire [3:0] S;
    
    add_3 uut (
        .A(A),
        .S(S)
    );
    
    initial
    begin
        A = 1;
        
        #10
        A = 4;
        
        #10
        A = 5;
        
        #10
        A = 7;
        
        #10
        A = 9;
        
        #10
        A = 10;
        
        #10
        A = 13;
    end
    
    initial 
    begin
        #70 $finish;
    end
endmodule
