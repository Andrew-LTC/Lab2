`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 09:28:04 PM
// Design Name: 
// Module Name: simple_calc_bcd_tb
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


module simple_calc_bcd_tb(

    );
    reg [3:0] X;
    reg [3:0] Y;
    reg [1:0] op_sel;
    wire [11:0] bcd_result;
    wire c_out;
    wire overflow;
    wire Nflag;
    wire [7:0] chkInput;
    
    simple_calc_bcd uut (
        .X(X),
        .Y(Y),
        .op_sel(op_sel),
        .bcd_result(bcd_result),
        .c_out(c_out),
        .overflow(overflow),
        .Nflag(Nflag),
        .chkInput(chkInput)
    );
    
    initial
    begin
        X = 1;
        Y = 1;
        op_sel = 0;
        
        #10
        X = 1;
        Y = 1;
        op_sel = 1;
        
        #10
        X = 1;
        Y = 1;
        op_sel = 2;
        
        #10
        X = 5;
        Y = 5;
        op_sel = 0;
        
        #10
        X = 5;
        Y = 5;
        op_sel = 1;
        
        #10
        X = 5;
        Y = 5;
        op_sel = 3;
        
        #10
        X = 10;
        Y = 5;
        op_sel = 0;
        
        #10
        X = 10;
        Y = 10;
        op_sel = 1;
        
        #10
        X = 10;
        Y = 10;
        op_sel = 2;
        
        #10
        X = 15;
        Y = 15;
        op_sel = 3;

    end
    
    initial
    begin
        #100 $finish;
    end
endmodule
