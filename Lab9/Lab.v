`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:19 12/13/2021 
// Design Name: 
// Module Name:    Lab 
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
module Lab(
    output y,
    output z,

    output r,
    output s,
    
    input a,
    input b,

    input clk
    );
    

    wire d0, q0, qp0, d1, q1, qp1;

    DFF dff1(q0, qp0, d0, clk);
    DFF dff2(q1, qp1, d1, clk);

    assign s = b & qp1;
    assign d0 = a | s;
    assign d1 = ~(d0 | qp0);
    assign r = qp1 & b;
    assign z = qp0 & r;


endmodule
