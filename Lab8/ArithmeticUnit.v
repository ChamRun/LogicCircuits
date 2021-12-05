`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:48 12/05/2021 
// Design Name: 
// Module Name:    ArithmeticUnit 
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
module ArithmeticUnit(
    input[1:0] a,
    input[1:0] b,
    output[3:0] multiply,
    output[3:0] add
    );

    assign multiply = a * b;
    assign add = a + b;


endmodule
