`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 09:20:07 PM
// Design Name: 
// Module Name: simple_calc_bcd
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


module simple_calc_bcd(
    input [3:0] X,
    input [3:0] Y,
    input [1:0] op_sel,
    output [11:0] bcd_result,
    output c_out,
    output overflow,
    //output [7:0] chkInput,
    output Nflag
    );
    
    //for data movement between simple_calc and bin2bcd
    wire [7:0] z;
    wire [7:0] z2s;
    wire [7:0] y;
    
    assign z2s = ~z + 1'b1;
    assign Nflag = z[7];
    
    //for debugging
    //assign chkInput = z;
    
    mux_2x1_8bit M0(
        .x(z[7:0]),
        .y(z2s[7:0]),
        .s(z[7]),
        .f(y[7:0])
    );
    simple_calc SC0 (
        .X(X),
        .Y(Y),
        .op_sel(op_sel),
        .result(z[7:0]),
        .c_out(c_out),
        .overflow(overflow)
    );
    bin2bcd BB0 (
        .bin(y[7:0]),
        .bcd(bcd_result)
    );
endmodule
