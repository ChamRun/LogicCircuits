`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:23 12/13/2021 
// Design Name: 
// Module Name:    DFF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DFF(
    output q,
    output qp,
    input d,
    input c
    );

    wire s, r;
    assign s = ~(c & d);
    assign r = ~(c & ~d);

    assign q = ~(s & qp);
    assign qp = ~(r & q);



endmodule
