`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:16 12/15/2021 
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

    DFF #(5) dff1(q0, qp0, d0, clk);
    DFF #(5) dff2(q1, qp1, d1, clk);

    // assign s = b & qp1;
    and #(10) and0(s, b, qp1);

    // assign d0 = a | s;
    or #(10) or0(d0, a, s);
    
    // assign d1 = ~(d0 | qp0);
    nor #(10) nor0(d1, d0, qp0);
    
    // assign r = qp1 & b;
    and #(10) and1(r, qp1, b);
    
    // assign z = qp0 & r;
    and #(10) and2(z, qp0, r);
    
    assign y = q0;


endmodule

