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
    nand nand0(s, c, d);
    //assign s = ~(c & d);
    
    wire not_d;
    not not0(not_d, d);
    nand nand1(r, c, not_d);
    //assign r = ~(c & ~d);

    nand nand2(q, s, qp);
    //assign q = ~(s & qp);
    nand nand3(qp, r, q);
    //assign qp = ~(r & q);



endmodule
