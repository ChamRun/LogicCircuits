`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:03 12/05/2021 
// Design Name: 
// Module Name:    LogicUnit 
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
module LogicUnit(
    input[1:0] a,
    input[1:0] b,
    output[3:0] a_nand_b,
    output[3:0] not_a
    );

    assign a_nand_b = a ~& b;
    assign not_a = ~a;
    

endmodule
