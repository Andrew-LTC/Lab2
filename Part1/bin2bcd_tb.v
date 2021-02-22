`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 08:38:50 PM
// Design Name: 
// Module Name: bin2bcd_tb
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


module bin2bcd_tb(

    );
    reg [7:0] bin;
    wire [11:0] bcd;
    
    bin2bcd uut (
        .bin(bin),
        .bcd(bcd)
    );
    
    initial
    begin
        bin = 9;
        
        #10
        bin = 10;
        
        #10
        bin = 99;
        
        #10
        bin = 100;
    end
    
    initial
    begin
        #40 $finish;
    end
endmodule
