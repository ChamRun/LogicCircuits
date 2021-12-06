`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: https://github.com/ChamRun/
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

    assign {a_nand_b[1], a_nand_b[0]} = ~(a & b);
    assign {not_a[1], not_a[0]} = ~a;
	 
    assign {not_a[3], not_a[2], a_nand_b[3], a_nand_b[2]} = 0;

endmodule
