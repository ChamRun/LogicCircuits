`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:58 12/13/2021 
// Design Name: 
// Module Name:    SRFF 
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
module SRFF(
    output q,
    output qp,
    input s,
    input r
    );

    assign q = ~(r | qp);
    assign qp = ~(s | q);

endmodule
